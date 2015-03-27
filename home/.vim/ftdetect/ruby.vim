fun! s:DetectRuby()
    if getline(1) == '#!/usr/bin/env shell-ruby'
        set filetype=ruby
    endif
endfun

autocmd BufRead */github/shell/bin/* call s:DetectRuby()
