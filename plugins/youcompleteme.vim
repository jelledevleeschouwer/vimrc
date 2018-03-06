" Plugin 'ervandew/supertab'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'rdnetto/YCM-Generator', { 'branch': 'develop'}
" Plugin 'SirVer/ultisnips'

" nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
" " Go back to previous location with <leader>b
" nnoremap <leader>b <C-o>
" " Do not ask when starting vim
" let g:ycm_confirm_extra_conf = 0
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:syntastic_always_populate_loc_list = 1
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_enable_diagnostic_highlighting = 1
" let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:clang_library_path = '/usr/lib/llvm-4.0'


" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:UltiSnipsEditSplit='normal'
" let g:ulti_expand_or_jump_res = 1

" function! ExpandSnippetOrCarriageReturn()
    " let snippet = UltiSnips#ExpandSnippetOrJump()
    " echo snippet
    " if g:ulti_expand_or_jump_res > 0
        " return snippet
    " else
        " return '\<CR>'
    " endif
" endfunction

" let g:endwise_no_mappings = 1
