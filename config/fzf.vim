let g:fzf_action = {
      \ 'ctrl-t': 'tabe',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

 command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--color-path="0;33" --depth 10', <bang>0)
