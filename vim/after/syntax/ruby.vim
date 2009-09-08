if expand('%') =~# '_spec\.rb$'
  syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject  teardown
endif
if expand('%') =~# '_test\.rb$' || expand('%') =~# '\/test_.*\.rb$'
  syn keyword rubyShoulda context should setup teardown should_change should_eventually
endif

hi def link rubyRspec Function
hi def link rubyShoulda Function

compiler rubyunit
nmap <Leader>fd :cf /tmp/autotest.txt<CR>:compiler rubyunit<CR>
