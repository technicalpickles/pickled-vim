" markdown filetype file
if exists("did_load_filetypes")
 finish
endif
augroup markdown
 au! BufRead,BufNewFile *.mkd   setfiletype mkd
augroup END

