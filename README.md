# batch-download-googledrive
R script to batch download files from google drive links using gdown

Script I wrote to handle large quantities of emails sharing Access to Information Act requests via google drive links. Not the prettiest or most efficient, but I wrote it in a hurry, and it works. 

# To use

1. Copy and paste emails from ATI offices into a text file
2. Read text file into R, feeding the file path into the read.delim function
3. Run script; be sure to swap out read_csv path, so you know where the output is going
4. copy and paste .txt file output into your terminal. Be sure to have install gdown first (pip install gdown or pip3 install gdown)
