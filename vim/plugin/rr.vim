function! RspecToRR()
  " Remove trailing space
  silent! %s/\s\+$//g
  
  silent! %s/\([^ ]\+\).should_not_receive(:\(.*\))/dont_allow(\1).\2/g
  silent! %s/\([^ ]\+\)\.should_receive(:\(.*\)).with(\(.*\)).and_return(\(.*\))/mock(\1)\.\2(\3) { \4 }/g
  silent! %s/\([^ ]\+\)\.should_receive(:\(.*\)).and_return(\(.*\))/mock(\1)\.\2 { \3 }/g
  silent! %s/\([^ ]\+\)\.should_receive(\(.*\)).and_return(\(.*\))/mock(\1, \2).returns(\3)/g
  silent! %s/\([^ ]\+\)\.should_receive(:\(.*\)).with(\(.*\))/mock(\1)\.\2(\3)/g
  silent! %s/\([^ ]\+\)\.should_receive(:\(.*\))/mock(\1).\2/g

  silent! %s/\([^ ]\+\)\.stub!(:\(.*\)).with(\(.*\)).and_return(\(.*\))/stub(\1).\2(\3) { \3 }/g
  silent! %s/\([^ ]\+\)\.stub!(:\(.*\)).and_return(\(.*\))/stub(\1).\2 { \3 }/g

  silent! %s/\([^ ]\+\)\.stub!(\(.*\)).and_return(\(.*\))/stub(\1, \2).returns(\3)/g
  silent! %s/\([^ ]\+\)\.stub!(:\(.*\))/stub(\1).\2/g
endfunction

command! RspecToRR call RspecToRR()
