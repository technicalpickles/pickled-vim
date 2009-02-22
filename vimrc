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
  setlocal numberwidth=3

" Use the tab complete menu
" first tab shows all matches. next tab starts cycling through the matches
  set wildmenu 
  set wildmode=list:longest,full

" don't make it look like there are line breaks where there aren't:
  set nowrap

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
  " markdown goodness
  autocmd BufRead *.mkd  set autoindent formatoptions=tcroqn2 comments=n:>
augroup END

" bind control-l to hashrocket
  imap <C-l> <Space>=><Space>
  
" align hashrockets
  vmap <leader>t<C-l> :Align =><CR>

" bind \d to toggle file browser
" requires NERDTree
map <silent> <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
let NERDTreeQuitOnOpen=1
"nmap <silent> <CR> NERDTreeMapActivateNode

" binds leader-t to textmate-style fuzzy finder
  map <silent> <leader>t :FuzzyFinderTextMate<CR>
  let g:fuzzy_matching_limit=60
  let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**"
  let g:fuzzy_ceiling=20000


" \F to startup an ack search
  map <leader>F :Ack<space>

" search next/previous -- center in page
  nmap n nzz
  nmap N Nzz
  nmap * *Nzz
  nmap # #nzz

" window splitting mappings
" split vertically with <leader> v
" split horizontally with <leader> s
  nmap <silent> <leader>v :vsplit<CR> <C-w><C-w>
  nmap <silent> <leader>s :split<CR> <C-w><C-w>
  
" Make it way easier to switch windows (<leader>w)
  nmap <leader>w <C-w><C-w>_
  
" toggle qfix with <leader>q
  map <silent> <leader>q :QFix<CR>
  
" enter to insert new line after, control-enter to insert new line before
  nmap <S-CR> o<ESC>
  nmap <C-CR> O<ESC>

" MAKE BACKSPACE WORK IN INSERT MODE
  set backspace=indent,eol,start

" REMEMBER LAST POSITION IN FILE
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" IRB {{{
  autocmd FileType irb inoremap <buffer> <silent> <CR> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<CR>
  nnoremap <leader>irb :<C-u>below new<CR>:setfiletype irb<CR>:set syntax=ruby<CR>:set buftype=nofile<CR>:set bufhidden=delete<CR>i

let g:browser = 'open '
" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/'.a:keyword
  exec '!'.g:browser.' '.url
endfunction           
noremap <leader>rb :call OpenRubyDoc(expand('<cword>'))<CR>
 
" Open the Rails ApiDock page for the word under cursos, in a new Firefox tab
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/'.a:keyword
  exec '!'.g:browser.' '.url
endfunction
noremap <leader>rr :call OpenRailsDoc(expand('<cword>'))<CR>
