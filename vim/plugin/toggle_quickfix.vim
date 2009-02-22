" http://vim.wikia.com/wiki/Toggle_to_open_or_close_the_quickfix_window

" toggles the quickfix window.
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    if exists("g:jah_Quickfix_Win_Height")
      execute "copen " . g:jah_Quickfix_Win_Height
    else
      execute "copen " 
    endif
  endif
endfunction

" used to track the quickfix window
augroup QFixToggle
 autocmd!
 autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END
