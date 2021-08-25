Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

let g:markdown_syntax_conceal = 0
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'c']
" let g:markdown_minlines = 100

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1


" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" example
nmap <Leader>md <Plug>MarkdownPreview
nmap <Leader>mdc <Plug>MarkdownPreviewStop
nmap <Leader>mdt <Plug>MarkdownPreviewToggle
