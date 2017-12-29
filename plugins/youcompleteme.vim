Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" Go back to previous location with <leader>b
nnoremap <leader>b <C-o>
" Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:syntastic_always_populate_loc_list = 1
let g:ycm_collect_identifiers_from_tags_files = 1
set tags+=./.tags
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_goto_buffer_command = 'vertical-split'

let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>']
