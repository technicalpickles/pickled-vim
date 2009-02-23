scriptencoding utf-8

" I like pretty colors
  colorscheme ir_black

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

" Display extra whitespace
  set list listchars=tab:»·,trail:·

" don't make it look like there are line breaks where there aren't:
  "set nowrap

" assume the /g flag on :s substitutions to replace all matches in a line:
  set gdefault

" Load matchit (% to bounce from do to end, etc.)
  runtime! macros/matchit.vim

" TAB NAVIGATION
  nmap <leader>tn :tabnext<cr>
  nmap <leader>tp :tabprevious<cr>  
  nmap <leader>te :tabedit  

" Remap F1 from Help to ESC.  No more accidents
  nmap <F1> <Esc>
  map! <F1> <Esc>

" SHELL
  command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)

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

  nmap <leader>sh :Shell 

  nmap <leader>reek :Shell reek %<CR>
  nmap <leader>roodi :Shell roodi %<CR>
  nmap <leader>flog :Shell flog -m -I lib % 2>/dev/null<CR>

" Quick way tou leave insert mode, without leaving homerow
  imap ii <Esc>

" Nice statusbar
  set laststatus=2
  set statusline=\ "
  set statusline+=%f\ " file name
  set statusline+=[
  set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
  set statusline+=%{&fileformat}] " file format
  set statusline+=%h%1*%m%r%w%0* " flag
  set statusline+=%= " right align
  set statusline+=%-14.(%l,%c%V%)\ %<%P " offset


" Title: update the title of the window?
  set title

" Title String: what will actually be displayed
  set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Turn off rails bits of statusbar
  let g:rails_statusline=0

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set autoindent shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType vim set autoindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
  autocmd FileType cucumber set autoindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
  " markdown goodness
  autocmd BufRead *.mkd  set autoindent formatoptions=tcroqn2 comments=n:>
augroup END

" bind control-l to hashrocket
  imap <C-l> <Space>=><Space>

" align hashrockets
  vmap <leader>t<C-l> :Align =><CR>

" NERDTree configuration
  " bind \d to toggle & refresh file browser
  map <silent> <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>R
  " quit NERDTree after openning a file
  let NERDTreeQuitOnOpen=1
  " map enter to activating a node
  let NERDTreeMapActivateNode='<CR>'

" binds leader-t to textmate-style fuzzy finder
  map <silent> <leader>t :FuzzyFinderTextMate<CR>
  let g:fuzzy_matching_limit=60
  let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"
  let g:fuzzy_ceiling=20000


" <leader>F to begin searching with ack
  map <leader>F :Ack<space>

" search next/previous -- center in page
  nmap n nzz
  nmap N Nzz
  nmap * *Nzz
  nmap # #nzz

"make Y consistent with C and D
  nnoremap Y y$

" Hide search highlighting
  map <silent> <leader>nh :nohls <CR>
  
" toggle Quickfix window with <leader>q
  map <silent> <leader>q :QFix<CR>

" Make backspace work in insert mode
  set backspace=indent,eol,start

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endi

" IRB {{{
  autocmd FileType irb inoremap <buffer> <silent> <CR> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<CR>
  nnoremap <leader>irb :<C-u>below new<CR>:setfiletype irb<CR>:set syntax=ruby<CR>:set buftype=nofile<CR>:set bufhidden=delete<CR>i

let g:browser = 'open '
" Open the Ruby ApiDock page for the word under cursor, using the 'open'
" command
  function! OpenRubyDoc(keyword)
    let url = 'http://apidock.com/ruby/'.a:keyword
    exec '!'.g:browser.' '.url
  endfunction
  noremap <leader>rb :call OpenRubyDoc(expand('<cword>'))<CR>

" Open the Rails ApiDock page for the word under cursor, using the 'open'
" command
  function! OpenRailsDoc(keyword)
    let url = 'http://apidock.com/rails/'.a:keyword
    exec '!'.g:browser.' '.url
  endfunction
  noremap <leader>rr :call OpenRailsDoc(expand('<cword>'))<CR>
