" Jump to last known position after reading a buffer."
" autocmd BufReadPost *? call ahmed#autocmds#jumplast#()"

function! ahmed#autocmds#jumplast#() abort
  if empty(&buftype) && index(['diff', 'gitcommit'], &filetype, 0, v:true) == -1
    if line("'\"") >= 1 && line("'\"") <= line('$')
      execute 'normal! g`"'
    endif
  endif
endfunction
