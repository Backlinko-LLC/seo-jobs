rmarkdown::render(here::here("rmd", "final.Rmd"))

#usethis::edit_r_environ()

RCurl::ftpUpload(here::here("rmd", "final.html"), Sys.getenv("MY_FTP_DETAILS"))


