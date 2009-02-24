function! HTMLEncode()
ruby << EOF
  require 'cgi'
  position = $curwin.cursor
  line = $curbuf[position[0]]
  escaped_line = CGI.escapeHTML(line)
  $curbuf[position[0]] = escaped_line
EOF
endfunction

function! HTMLDecode()
ruby << EOF
  require 'cgi'
  position = $curwin.cursor
  line = $curbuf[position[0]]
  unescaped_line = CGI.unescapeHTML(line)
  $curbuf[position[0]] = unescaped_line
EOF
endfunction

map <silent> <Leader>h :call HTMLEncode()<CR>
map <silent> <Leader>H :call HTMLDecode()<CR>
