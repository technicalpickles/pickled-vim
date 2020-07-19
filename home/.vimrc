" Section: plugins
  call plug#begin('~/.vim/plugged')

" Subsection: plugins unlikely to cause problems
  Plug 'https://github.com/atelierbram/vim-colors_atelier-schemes.git'
  Plug 'https://github.com/ayu-theme/ayu-vim.git'
  Plug 'https://github.com/cocopon/iceberg.vim.git'
  Plug 'https://github.com/dracula/vim.git', { 'as': 'dracula' }
  Plug 'https://github.com/gosukiwi/vim-atom-dark.git'
  Plug 'https://github.com/joshdick/onedark.vim.git'
  Plug 'https://github.com/morhetz/gruvbox.git'
  Plug 'https://github.com/w0rp/ale.git'

" Subsection: plugins for syntax
  Plug 'https://github.com/StanAngeloff/php.vim.git'
  Plug 'https://github.com/asciidoc/vim-asciidoc.git'
  Plug 'https://github.com/gcorne/vim-sass-lint.git'
  Plug 'https://github.com/groenewege/vim-less.git'
  Plug 'https://github.com/hail2u/vim-css3-syntax.git'
  Plug 'https://github.com/jparise/vim-graphql.git'
  Plug 'https://github.com/othree/html5.vim.git'
  Plug 'https://github.com/pangloss/vim-javascript.git'
  Plug 'https://github.com/rhysd/vim-crystal.git'
  Plug 'https://github.com/rhysd/vim-syntax-codeowners.git'
  Plug 'https://github.com/rodjek/vim-puppet.git'
  Plug 'https://github.com/vim-ruby/vim-ruby.git'

" Subsection: everything else :D
  Plug 'https://github.com/LucHermitte/lh-vim-lib.git'
  Plug 'https://github.com/Raimondi/delimitMate.git'
  Plug 'https://github.com/airblade/vim-gitgutter.git'
  Plug 'https://github.com/digitaltoad/vim-pug.git'
  Plug 'https://github.com/editorconfig/editorconfig-vim.git'
  Plug 'https://github.com/farmergreg/vim-lastplace.git'
  Plug 'https://github.com/godlygeek/tabular.git'
  Plug 'https://github.com/ivalkeen/vim-ctrlp-tjump.git'
  Plug 'https://github.com/jlanzarotta/bufexplorer.git'
  Plug 'https://github.com/jmcantrell/vim-virtualenv.git'
  Plug 'https://github.com/johann-p-koebbe/rspec.vim.git'  " fork with better ultisnips support
  Plug 'https://github.com/joker1007/vim-ruby-heredoc-syntax.git'
  Plug 'https://github.com/jtratner/vim-flavored-markdown.git'
  Plug 'https://github.com/junegunn/vim-easy-align.git'
  Plug 'https://github.com/kchmck/vim-coffee-script.git'
  Plug 'https://github.com/kien/ctrlp.vim.git'
  Plug 'https://github.com/mhinz/vim-grepper.git'
  Plug 'https://github.com/mhinz/vim-startify.git'
  Plug 'https://github.com/moll/vim-node.git'
  Plug 'https://github.com/mxw/vim-jsx.git'
  Plug 'https://github.com/nanotech/jellybeans.vim.git'
  Plug 'https://github.com/niftylettuce/vim-jinja.git'
  Plug 'https://github.com/oscarh/vimerl.git'
  Plug 'https://github.com/scrooloose/nerdcommenter.git'
  Plug 'https://github.com/scrooloose/nerdtree.git'
  Plug 'https://github.com/sickill/vim-pasta.git'
  Plug 'https://github.com/skammer/vim-css-color.git'
  Plug 'https://github.com/spiiph/vim-space.git'
  Plug 'https://github.com/technicalpickles/vim-nodenv.git'
  Plug 'https://github.com/technicalpickles/vim-ruby-minitest.git' " fork with different filetype
  Plug 'https://github.com/technicalpickles/vim-snippets.git'
  " Plug 'https://github.com/ternjs/tern_for_vim.git'
  Plug 'https://github.com/tpope/vim-bundler.git'
  Plug 'https://github.com/tpope/vim-cucumber.git'
  Plug 'https://github.com/tpope/vim-dispatch.git'
  Plug 'https://github.com/tpope/vim-endwise.git'
  Plug 'https://github.com/tpope/vim-fugitive.git'
  Plug 'https://github.com/tpope/vim-git.git'
  Plug 'https://github.com/tpope/vim-liquid.git'
  Plug 'https://github.com/tpope/vim-markdown.git'
  "Plug 'https://github.com/plasticboy/vim-markdown.git'
  Plug 'https://github.com/tpope/vim-projectionist.git'
  Plug 'https://github.com/tpope/vim-ragtag.git'
  Plug 'https://github.com/tpope/vim-rails.git'
  Plug 'https://github.com/tpope/vim-rake.git'
  Plug 'https://github.com/tpope/vim-rbenv.git'
  Plug 'https://github.com/tpope/vim-repeat.git'
  Plug 'https://github.com/tpope/vim-rhubarb.git'
  Plug 'https://github.com/tpope/vim-sensible.git'
  Plug 'https://github.com/tpope/vim-surround.git'
  Plug 'https://github.com/tpope/vim-unimpaired.git'
  Plug 'https://github.com/vim-airline/vim-airline.git'
  Plug 'https://github.com/vim-airline/vim-airline-themes.git'
  Plug 'https://github.com/vim-scripts/IndentAnything.git'
  Plug 'https://github.com/vim-scripts/dbext.vim.git'
  Plug 'https://github.com/zerowidth/vim-bgtags.git'
  Plug 'https://github.com/chrisbra/matchit.git' " fix for https://github.com/macvim-dev/macvim/issues/845
  Plug 'https://github.com/Yggdroot/indentLine.git'
  Plug 'https://github.com/RRethy/vim-illuminate.git'
  Plug 'https://github.com/jgdavey/vim-blockle.git'
  Plug 'https://github.com/reedes/vim-pencil.git'
  Plug 'liuchengxu/vista.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'
  Plug 'https://github.com/dermusikman/sonicpi.vim.git'

" Section: plugins that probably will be deleted
" Plug 'https://github.com/majutsushi/tagbar.git'
" Plug 'https://github.com/SirVer/ultisnips.git'

  call plug#end()

" Section: configuration

  scriptencoding utf-8

  " I like pretty colors
  " Note: Use !silent to avoid error at startup before vim-plug first
  " installed

  set termguicolors     " enable true colors support
  "let ayucolor="light"  " for light version of theme
  "let ayucolor="mirage" " for mirage version of theme
  let ayucolor="dark"   " for dark version of theme
  silent! colorscheme ayu
  "silent! colorscheme iceberg
  "silent! colorscheme onedark
  "silent! colorscheme atom-dark
  "silent! colorscheme jellybeans
  "silent! colorscheme ir_black

  " These two enable syntax highlighting
  set nocompatible          " We're running Vim, not Vi!
  syntax on                 " Enable syntax highlighting

  " Enable filetype-specific indenting and plugins
  filetype plugin indent on

  " Highlight search results once found:
  set hlsearch

  " highlight the current line the cursor is on
  set cursorline
  " highlight the current column the cursor is on
  "set cursorcolumn

  "sm:    flashes matching brackets or parentheses
  set showmatch

  " use all lowercase to search case insensitive. using any uppercase letters
  " will be case-sensitive
  set smartcase

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
  set wildmode=list:longest,full
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

  " Display extra whitespace
  "set list listchars=tab:»·,trail:·

  " don't make it look like there are line breaks where there aren't:
  "set nowrap

  " assume the /g flag on :s substitutions to replace all matches in a line:
  set gdefault

  " enable setting title
  set title
  " configure title to look like: Vim /path/to/file
  set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

  " can has foldin plz?
  "set foldenable
  "set foldmethod=syntax
  "set foldlevel=999 " make it really high, so they're not displayed by default

  " 'murica
  set spelllang=en_us
  set complete+=kspell

  "let g:browser = 'open '

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!

    " Section: ruby
      autocmd FileType ruby,eruby,yaml,crystal set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
      autocmd BufRead,BufNewFile *.Brewfile set ft=ruby
      autocmd BufRead,BufNewFile Capfile set ft=ruby
      autocmd BufRead,BufNewFile Gemfile set ft=ruby
      autocmd BufRead,BufNewFile Gemfile set ft=ruby
      autocmd BufRead,BufNewFile Thorfile set ft=ruby
      autocmd BufRead,BufNewFile *.god set ft=ruby
      autocmd BufRead,BufNewFile *.ru set ft=ruby
      autocmd BufRead,BufNewFile .caprc set ft=ruby

    " Section: spelling
      autocmd FileType gitcommit setlocal spell
      autocmd BufRead,BufNewFile *.md setlocal spell
      autocmd BufRead,BufNewFile *.txt setlocal spell

    " Section: other stuff

    " indent with two spaces, always expand tabs
    autocmd FileType python set shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType javascript,html,htmldjango,css set shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType vim set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType markdown set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType cucumber set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType puppet set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType bash set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType sh set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
    autocmd BufRead,BufNewFile *etc/nginx/* set ft=nginx
  augroup END

  " Turn on language specific omnifuncs
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  autocmd FileType c set omnifunc=ccomplete#Complete
  autocmd FileType irb inoremap <buffer> <silent> <CR> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<CR>


" Section: functions

" Section: commands

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
  map <leader>F :GrepperAg<space>

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

  " Easily spell check
  " http://vimcasts.org/episodes/spell-checking/
  nmap <silent> <leader>s :set spell!<CR>

  " format file and return to where I was before
  nnoremap <Leader>= mmgg=G`mzz

  " Be less picky about spell check
  syn match UrlNoSpell '\w\+:\/\/[^[:space:]]\+' contains=@NoSpell
  syn match AcronymNoSpell '\<\(\u\|\d\)\{3,}s\?\>' contains=@NoSpell

  map <C-c>n :cnext<CR>
  map <C-c>p :cprevious<CR>

  " replace default tjump with vim-ctrlp-tjump
  map <C-]> :CtrlPtjump<CR>
  vmap <C-]> :CtrlPtjumpVisual<CR>

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

  " neither nvim frontend supports a .gvimrc, so load it ourselves
  if has('gui_vimr') || exists("neovim_dot_app")
    try
      source ~/.gvimrc
    endtry
  endif

" Section: airline plugin
  let g:airline_powerline_fonts = 1
  let g:airline_skip_empty_sections = 1

  " don't show words. if I need to know how many, I can check myself
  let g:airline#extensions#wordcount#enabled = 0

  " whitespace checks.  default: ['indent', 'trailing', 'mixed-indent-file', 'conflicts']
  "
  " I find the trailing lines kinda annoying. it's just noise when you are
  " touching files you don't have complete control off the style of. For times
  " that the project cares more, could plausibly use ale's
  " remote_trailing_lines whitespace fixer
  let g:airline#extensions#whitespace#checks = [ 'indent', 'mixed-indent-file', 'conflicts' ]

  " By default, it will display something like 'utf-8[unix]', however, you can
  " skip displaying it, if the output matches a configured string.
  let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Section vim-easy-align plugin
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)

  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)

" Section: ctrlp plugin
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|tmp|bundle)$',
  \ 'file': '\v\.(exe|so|dll|gem)$',
  \ }

  " ctrl-p extensions
  let g:ctrlp_extensions = ['tag']

  " Section: vim-ale
  let g:ale_open_list = 1 " show when there are errors
  let g:ale_sign_column_always = 1 " always show sign column, so text doesn't move around


  " configure which linters to use
  " - javascript: off by default, since no one syntax checker is going to work everywhere. use .vimrc to override
  " - ruby: only use mri
  let g:ale_linters = {
  \  'javascript': [],
  \  'ruby': ['mri'],
  \  'eruby': ['erubylint']
  \}

  let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \}

  " use rubocop if there's a config for it
  if filereadable(".rubocop.yml")
    let g:ale_linters.ruby = ['mri', 'rubocop']
    let g:ale_fixers.ruby = ['rubocop']
  endif

  let g:ale_fix_on_save = 1

  " Set per-path options
  " - .env files aren't usually real shell files, so ignore those
  let g:ale_pattern_options = {
  \   '\.env': {'ale_enabled': 0},
  \   '\.env.*$': {'ale_enabled': 0}
  \}

  " Exclude things that will almost always warn:
  " SC1090 - Can't follow non-constant source. Use a directive to specify location.
  " SC1091 - Not following: (error message here)
  let g:ale_linters_sh_shellcheck_exclusions='SC1090,SC1091'

  " Use relaxed yamllint options, since almost never writes good lint.
  " and don't care about line length, since again, no one will write short
  " lines.
  " we just need to write good enough yaml.
  "
  " projects that care more will need to override this in a project-specific .vimrc
  let g:ale_yaml_yamllint_options='-d "{extends: relaxed, rules: {line-length: disable}}"'


" Section: bufexplorer plugin
  let g:bufExplorerDefaultHelp=0       " Do not show default help.
  let g:bufExplorerShowRelativePath=1  " Show relative paths.

" Section: local_vim plugin
  let g:local_vimrc = ['.vimrc.local']

" Section: nerdtree plugin
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

" Section: rails plugin
  " Turn off rails bits of statusbar
  let g:rails_statusline=0

" Section: ultisnips plugin
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Section: vim-space
  " this interfers with my mapping <C-]> to vim-ctrlp-tjump
  let g:space_no_tags = 1

" Section: vim-ctrlp-tjump
  let g:ctrlp_tjump_only_silent = 1 " jump immediately if only one tag

" Section: nerdcommenter
  " Add spaces after comment delimiters by default
  let g:NERDSpaceDelims = 1
  " Align line-wise comment delimiters flush left instead of following code indentation
  let g:NERDDefaultAlign = 'left'

  "
  " See https://github.com/preservim/nerdcommenter/pull/393 for wider convo
  " about nerdcommenter and filetypes
  let g:NERDCustomDelimiters = {
      \ 'javascript.jsx': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
  \}

" Section: delimitMate
  let delimitMate_expand_cr = 1
  let delimitMate_expand_space = 1
  " let delimitMate_balance_matchpairs = 1
  let delimitMate_expand_inside_quotes = 1
  let delimitMate_jump_expansion = 1


" Section: vim-javascript
  " Enable jsdoc syntax
  let g:javascript_plugin_jsdoc = 1

" Section: project specific vimrc
  set exrc
  set secure

" Section: startify
  let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
  " don't change into directory, to keep at project root
  let g:startify_change_to_dir = 0

  if !has('nvim')
    set viminfo='100,n$HOME/.vim/files/info/viminfo
  endif


  " Section: coc
  " use <tab> for trigger completion and navigate to the next complete item
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  " Use `tab` key to trigger coc, as well as select the next completion
  inoremap <silent><expr> <Tab>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
  " Use shift-tab to select previous completion
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

  " use <c-space>for trigger completion
  " inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


  " enter to select
  " inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  "
  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)


" Section: bgtags
  " Disable tag binary search, assume tag files are unsorted. This is likely true
  " given that autotag is rewriting tags files, and the tags command I'm using
  " also doesn't generate a sorted file. This will save a binary search (fast as
  " it is) and go directly to a linear search.
  set notagbsearch

  let g:bgtags_user_commands = {
  \ "directories": {
    \ "default": "ctags -R"
    \ },
  \ "filetypes": {
    \ "default": "ctags -f-"
    \ }
  \ }

" Section: ruby-herdoc-syntax

  let g:ruby_heredoc_syntax_filetypes = {
          \ "graphql" : {
          \   "start" : "GRAPHQL",
          \},
          \ "ruby" : {
          \   "start" : "SOURCE",
          \},
    \}

" Section: vim-markdown
  let g:vim_markdown_new_list_item_indent = 2

" Section: note taking

  nmap <leader>p :TogglePencil<CR>

  " Special configuration for devonthink notes
  augroup devonthink
     autocmd!
     " don't bother with spellcheck in my devonthink archive by default
     autocmd BufRead,BufNewFile **/DEVONthink\ Pro\ 2/*.dtBase2/**/*.md setlocal nospell
  augroup END
