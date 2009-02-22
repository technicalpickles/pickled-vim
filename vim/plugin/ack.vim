" http://blog.ant0ine.com/2007/03/ack_and_vim_integration.html
function! Ack(args)
    let grepprg_bak=&grepprg
    set grepprg=ack\ -H
    execute "silent! grep " . a:args
    botright copen
    let &grepprg=grepprg_bak
endfunction

command! -nargs=* -complete=file Ack call Ack(<q-args>)

