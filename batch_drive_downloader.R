# pip or pip3 install gdown, run result in terminal

email <- as.character(read.delim("<EMAIL.TXT>"))

links <- qdapRegex::ex_url(email)

get_id <- function(link){
  stringr::str_extract(link, "(?<=\\/d\\/)[^\\/]*")
}

ids <- unname(sapply(links, get_id))

new_links <- unname(data.frame(paste0("gdown ", "https://drive.google.com/uc\\?export\\=download\\&id\\=", ids)))

readr::write_csv(new_links, "<PATH/FILE.TXT>", col_names = FALSE)
