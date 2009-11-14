" Write the current buffer, run rake, re-install the plugin, and restart
" firefox.
command Grebuild exec G_rebuild()
function G_rebuild()
  w
  call system("pane-rebuild")
endfunction

command Grepl exec G_repl()
function G_repl()
  w
  call system("pane-repl")
endfunction
