rmarkdown::render(here::here("rmd", "final.Rmd"))

RCurl::ftpUpload(here::here("rmd", "final.html"), Sys.getenv("MY_FTP_DETAILS"))


