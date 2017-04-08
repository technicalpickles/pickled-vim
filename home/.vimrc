
" Section: plugins
  call plug#begin('~/.vim/plugged')
  Plug 'git://github.com/mileszs/ack.vim.git'
  Plug 'https://github.com/kien/ctrlp.vim.git'
  Plug 'https://github.com/editorconfig/editorconfig-vim.git'
  " TODO go
  Plug 'https://github.com/othree/html5.vim.git'
  Plug 'git://github.com/nanotech/jellybeans.vim.git'
  Plug 'https://github.com/LucHermitte/lh-vim-lib.git'
  Plug 'https://github.com/LucHermitte/local_vimrc.git'
  Plug 'git://github.com/scrooloose/nerdtree.git'
  Plug 'git://github.com/rodjek/vim-puppet.git'
  Plug 'https://github.com/scrooloose/syntastic.git'
  Plug 'git://github.com/godlygeek/tabular.git'
  Plug 'https://github.com/gosukiwi/vim-atom-dark.git'
  Plug 'https://github.com/jlanzarotta/bufexplorer.git'
  Plug 'git://github.com/tpope/vim-bundler.git'
  Plug 'https://github.com/kchmck/vim-coffee-script.git'
  Plug 'git://github.com/skammer/vim-css-color.git'
  Plug 'git://github.com/hail2u/vim-css3-syntax.git'
  Plug 'git://github.com/tpope/vim-cucumber.git'
  Plug 'https://github.com/tpope/vim-dispatch.git'
  Plug 'git://github.com/tpope/vim-endwise.git'
  Plug 'git://github.com/jtratner/vim-flavored-markdown.git'
  Plug 'git://github.com/tpope/vim-git.git'
  Plug 'https://github.com/pangloss/vim-javascript.git'
  Plug 'https://github.com/niftylettuce/vim-jinja.git'
  Plug 'git://github.com/groenewege/vim-less.git'
  Plug 'git://github.com/tpope/vim-liquid.git'
  Plug 'git://github.com/tpope/vim-markdown.git'
  Plug 'https://github.com/tpope/vim-projectionist.git'
  Plug 'git://github.com/digitaltoad/vim-pug.git'
  Plug 'https://github.com/nelstrom/vim-qargs.git'
  Plug 'git://github.com/tpope/vim-rails.git'
  Plug 'git://github.com/tpope/vim-rake.git'
  Plug 'git://github.com/tpope/vim-repeat.git'
  Plug 'https://github.com/gcorne/vim-sass-lint.git'
  Plug 'git://github.com/spiiph/vim-space.git'
  Plug 'git://github.com/tpope/vim-surround.git'
  Plug 'https://github.com/jmcantrell/vim-virtualenv.git'
  Plug 'https://github.com/oscarh/vimerl.git'
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'https://github.com/tpope/vim-fugitive.git', { 'tag': 'v2.2' }
  Plug 'scrooloose/nerdcommenter'
  Plug 'vim-scripts/dbext.vim'
  Plug 'tpope/vim-ragtag'
  Plug 'vim-scripts/IndentAnything'
  Plug 'majutsushi/tagbar'
  Plug 'ervandew/supertab'
  Plug 'StanAngeloff/php.vim'
  Plug 'asciidoc/vim-asciidoc'
  Plug 'keith/rspec.vim'
  Plug 'https://github.com/SirVer/ultisnips.git'
  Plug 'https://github.com/honza/vim-snippets.git'
  Plug 'junegunn/vim-easy-align'

  call plug#end()

" Section: configuration

  scriptencoding utf-8

  " I like pretty colors
  " Note: Use !silent to avoid error at startup before vim-plug first
  " installed
  silent! colorscheme onedark
  "silent! colorscheme atom-dark
  "silent! colorscheme jellybeans
  "silent! colorscheme ir_black

  " These two enable syntax highlighting
  set nocompatible          " We're running Vim, not Vi!
  syntax on                 " Enable syntax highlighting

  " Enable filetype-specific indenting and plugins
  filetype plugin indent on

  " show the `best match so far' as search strings are typed
  set incsearch

  " Highlight search results once found:
  set hlsearch

  " highlight the current line the cursor is on
  set cursorline
  " highlight the current column the cursor is on
  "set cursorcolumn

  "sm:    flashes matching brackets or parentheses
  set showmatch

  "sta:   helps with backspacing because of expandtab
  set smarttab

  " Change <Leader>
  let mapleader = ","

  " Set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

  " When scrolling off-screen do so 3 lines at a time, not 1
  set scrolloff=3

  " enable line numbers
  set number
  setlocal numberwidth=5

  " Enable tab complete for commands.
  " first tab shows all matches. next tab starts cycling through the matches
  set wildmenu
  set wildmode=list:longest,full

  " don't complete from included files, on account of slow
  set complete-=i

  " Display extra whitespace
  "set list listchars=tab:»·,trail:·

  " don't make it look like there are line breaks where there aren't:
  "set nowrap

  " assume the /g flag on :s substitutions to replace all matches in a line:
  set gdefault

  " Load matchit (% to bounce from do to end, etc.)
  runtime! macros/matchit.vim

  " always show statusline
  set laststatus=2

  " syntastic settings
  "set statusline+=%#warningmsg#
  "set statusline+=%{SyntasticStatuslineFlag()}
  "set statusline+=%*

  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

  let g:syntastic_python_checkers = ['pylint', 'flake8', 'pydocstyle']
  let g:syntastic_sass_checkers=["sasslint"]
  let g:syntastic_scss_checkers=["sasslint"]

  " enable setting title
  set title
  " configure title to look like: Vim /path/to/file
  set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

  " Make backspace work in insert mode
  set backspace=indent,eol,start

  " can has foldin plz?
  set foldenable
  set foldmethod=syntax
  set foldlevel=999 " make it really high, so they're not displayed by default

  " 'murica
  set spelllang=en_us

  " ctrl-p ignores and whatnot
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
  "
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|tmp|bundle)$',
  \ 'file': '\v\.(exe|so|dll|gem)$',
  \ }

  " ctrl-p extensions
  "
  let g:ctrlp_extensions = ['tag']

  " local_vim
  let g:local_vimrc = ['.vimrc.local']

  " Turn off rails bits of statusbar
  let g:rails_statusline=0

  " so it doesn't complain about types it doesn't know
  let NERDShutUp = 1
  let NERDTreeHijackNetrw=1
  " quit NERDTree after openning a file
  let NERDTreeQuitOnOpen=1
  " colored NERD Tree
  let NERDChristmasTree = 1
  let NERDTreeHighlightCursorline = 1
  let NERDTreeShowHidden = 1
  " map enter to activating a node
  let NERDTreeMapActivateNode='<CR>'
  let NERDTreeIgnore=['\.git','\.DS_Store','\.pdf', '.beam']

  " limit number of results shown for performance
  let g:fuzzy_matching_limit=60
  " ignore stuff that can't be openned, and generated files
  let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;*.beam;vendor/**;coverage/**;tmp/**;rdoc/**"
  " increate the number of files scanned for very large projects
  let g:fuzzy_ceiling=20000
  " display relative path, instead of abbrevated path (lib/jeweler.rb vs
  " l/jeweler.rb)
  let g:fuzzy_path_display = 'relative_path'

  let g:browser = 'open '

  " use the_silver_surfer for Ack
  let g:ackprg = 'ag --nogroup --nocolor --column'

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml set autoindent shiftwidth=2 softtabstop=2 tabstop=2 expandtab
    autocmd FileType python set autoindent shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType javascript,html,htmldjango,css set autoindent shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType vim set autoindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType cucumber set autoindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType puppet set autoindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
    au BufRead,BufNewFile *etc/nginx/* set ft=nginx
    " treat rackup files like ruby
    au BufRead,BufNewFile *.ru set ft=ruby
    au BufRead,BufNewFile Gemfile set ft=ruby
    autocmd BufEnter *.haml setlocal cursorcolumn
    au BufRead,BufNewFile Gemfile set ft=ruby
    au BufRead,BufNewFile Capfile set ft=ruby
    au BufRead,BufNewFile Thorfile set ft=ruby
    au BufRead,BufNewFile *.god set ft=ruby
    au BufRead,BufNewFile .caprc set ft=ruby
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
  augroup END


  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endi

  " Turn on language specific omnifuncs
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  autocmd FileType c set omnifunc=ccomplete#Complete


  " have some fun with bufexplorer
  let g:bufExplorerDefaultHelp=0       " Do not show default help.
  let g:bufExplorerShowRelativePath=1  " Show relative paths.

" IRB {{{
  autocmd FileType irb inoremap <buffer> <silent> <CR> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<CR>

" Section: functions

  function! s:RunShellCommand(cmdline)
    botright new

    setlocal buftype=nofile
    setlocal bufhidden=delete
    setlocal nobuflisted
    setlocal noswapfile
    setlocal nowrap
    setlocal filetype=shell
    setlocal syntax=shell

    call setline(1,a:cmdline)
    call setline(2,substitute(a:cmdline,'.','=','g'))
    execute 'silent $read !'.escape(a:cmdline,'%#')
    setlocal nomodifiable
    1
  endfunction

  " Open the Rails ApiDock page for the word under cursor, using the 'open'
  " command
  function! OpenRailsDoc(keyword)
    let url = 'http://apidock.com/rails/'.a:keyword
    exec '!'.g:browser.' '.url
  endfunction

  " Open the Ruby ApiDock page for the word under cursor, using the 'open'
  " command
  function! OpenRubyDoc(keyword)
    let url = 'http://apidock.com/ruby/'.a:keyword
    exec '!'.g:browser.' '.url
  endfunction

" Section: commands

  " Shell
  command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)

  " Ruby code metrics
  command! -complete=file -nargs=+ Reek :Shell reek <q-args>
  command! -complete=file -nargs=+ Roodi :Shell roodi <q-args>
  command! -complete=file -nargs=+ Flog :Shell flog -m -I lib <q-args> 2>/dev/null

" Section: mappings

  " Tab navigation
  nmap <leader>tn :tabnext<CR>
  nmap <leader>tp :tabprevious<CR>
  nmap <leader>te :tabedit

  " Remap F1 from Help to ESC.  No more accidents.
  nmap <F1> <Esc>
  map! <F1> <Esc>

  " insert hashrocket, =>, with control-l
  imap <C-l> <Space>=><Space>

  " align hashrockets with <leader>t control-l
  vmap <leader>t<C-l> :Align =><CR>

  " Toggle NERDTree with <leader>d
  map <silent> <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

  " TextMate fuzzy finder with <leader>t
  map <silent> <leader>t :CtrlP<CR>

  " <leader>F to begin searching with ack
  map <leader>F :Ack<space>

  " search next/previous -- center in page
  nmap n nzz
  nmap N Nzz
  nmap * *Nzz
  nmap # #nzz

  " Yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

  " Hide search highlighting
  map <silent> <leader>nh :nohls <CR>

  " toggle Quickfix window with <leader>q
  map <silent> <leader>q :QFix<CR>

  nnoremap <leader>irb :<C-u>below new<CR>:setfiletype irb<CR>:set syntax=ruby<CR>:set buftype=nofile<CR>:set bufhidden=delete<CR>i

  " Easily lookup documentation on apidock
  noremap <leader>rb :call OpenRubyDoc(expand('<cword>'))<CR>
  noremap <leader>rr :call OpenRailsDoc(expand('<cword>'))<CR>

  " Easily spell check
  " http://vimcasts.org/episodes/spell-checking/
  nmap <silent> <leader>s :set spell!<CR>


  map <C-c>n :cnext<CR>
  map <C-c>p :cprevious<CR>

  function! RspecToMocha()
    silent! %s/\.stub!\?(/.stubs(/
    silent! %s/and_return/returns/
    silent! %s/should_receive/expects/
    silent! %s/should_not_receive\((.*)\)/expects\1.never
    silent! %s/and_raise/raises/
    :w
  endfunction
  command! RspecToMocha call RspecToMocha()

" Section neovim UI

  if has('gui_vimr') || exists("neovim_dot_app")
    try
      source ~/.gvimrc
    endtry
  endif

" Section Airline
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline_skip_empty_sections = 1

" Section Easy Align
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)

  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
