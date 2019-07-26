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
      template <- readLines("README-template.md")
      done <- whisker::whisker.render(template)
      usethis::write_over("~/README.md", done, quiet = TRUE)
    }
  ) %>% 
  add_step(step_push_deploy())
