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
