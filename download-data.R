url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dest_file <- "data/murders.csv"
download.file(url, destfile = dest_file,  method = "libcurl")
# https://stackoverflow.com/questions/71271210/r-markdown-cannot-open-url-when-using-download-file