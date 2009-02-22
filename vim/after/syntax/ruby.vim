if expand('%') =~# '_spec\.rb$'
  syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject 
endif

hi def link rubyRspec Function
