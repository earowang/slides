get_stage("before_install") %>%
  add_code_step(update.packages(ask = FALSE))

get_stage("install") %>%
  add_code_step(remotes::install_deps(dependencies = TRUE))

get_stage("before_deploy") %>%
  add_step(step_setup_ssh())

get_stage("deploy") %>%
  add_code_step(
    call = {
      talks <- whisker::iteratelist(
        gsub("^_site/", "", fs::dir_ls("_site/", type = "directory")),
        value = "repo"
      )

      # usethis:::write_utf8
      write_utf8 <- function (path, lines) {
        stopifnot(is.character(path))
        stopifnot(is.character(lines))
        con <- file(path, encoding = "utf-8")
        on.exit(close(con), add = TRUE)
        if (length(lines) > 1) {
          lines <- paste0(lines, "\n", collapse = "")
        }
        cat(lines, file = con, sep = "")
        invisible(TRUE)
      }

      template <- readLines("README-template.md")
      done <- strsplit(whisker::whisker.render(template), "\n")[[1]]
      write_utf8("README.md", done)
    }
  ) %>% 
  add_step(step_push_deploy())
