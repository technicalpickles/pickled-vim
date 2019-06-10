" And pretty fonts
  set macligatures
  set guifont=FuraCode\ Nerd\ Font:h14


" Section: IdentLine
  let g:indentLine_char = '┊'
  let g:indentLine_first_char = '┊'
  let g:indentLine_showFirstIndentLevel = 1
  let g:indentLine_setColors = 0


" No toolbar
  set guioptions-=T

  set lines=60
  set columns=120

" Mac Keybindings
if has('gui_macvim') || has('gui_vimr') || exists("neovim_dot_app")
  " bind command-/ to toggle comment
    nmap <D-/> ,c<space>
    vmap <D-/> ,c<space>
    imap <D-/> <C-O>,c<space>

  " bind command-] to shift right
    nmap <D-]> >>
    vmap <D-]> >
    imap <D-]> <C-O>>>

  " bind command-[ to shift left
    nmap <D-[> <<
    vmap <D-[> <
    imap <D-[> <C-O><<

  " bind command-option-l to toggle line numbers
    nmap <silent> <D-M-l> :set invnumber<CR>
   
  " open tabs with command-<tab number>
    map <silent> <D-1> :tabn 1<CR>
    map <silent> <D-2> :tabn 2<CR>
    map <silent> <D-3> :tabn 3<CR>
    map <silent> <D-4> :tabn 4<CR>
    map <silent> <D-5> :tabn 5<CR>
    map <silent> <D-6> :tabn 6<CR>
    map <silent> <D-7> :tabn 7<CR>
    map <silent> <D-8> :tabn 8<CR>
    map <silent> <D-9> :tabn 9<CR>

  " use vim search instead of pop up
    if has('gui_macvim')
      macmenu Edit.Find.Find\.\.\. key=<nop>
    endif
    " FIXME in neovim-dot-app, unbind full screen from this and rebind to something else?
    map <D-f> /

  " TextMate / Atom fuzzy finder with Command-t
    if has('gui_macvim')
      macmenu File.New\ Tab key=<nop>
    endif
    map <silent> <D-t> :CtrlP<CR>

  " Search project like Atom
    nmap <D-F> :GrepperAg<space>

  " Atom's Tree View: Toggle
    map <silent> <D-K><D-B> :execute 'NERDTreeToggle ' . getcwd()<CR>
    map <silent> <D-Bslash> :execute 'NERDTreeToggle ' . getcwd()<CR>

  " Atom's Tree View: Reveal Active File
    map <silent> <D-Bar> :NERDTreeFind<CR>
endif

if has('gui_macvim')
  " fullscreen maximizes vertically AND horizontally
    set fuoptions=maxvert,maxhorz
endif
