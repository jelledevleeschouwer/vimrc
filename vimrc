""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc
" -----
"
" author: Jelle De Vleeschouwer
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make 'space' the leader
let mapleader="\<Space>"

" Execute all vimrc's in all sub-directories of ~/.vim/
function! s:SourceConfigFilesIn(directory)
   	let directory_splat = '~/.vim/' . a:directory . '/*'
 	for config_file in split(glob(directory_splat), '\n')
		if filereadable(config_file)
			execute 'source' config_file
		endif
	endfor
endfunction

" Let Vundle manage the bundle
filetype off " required
set rtp+=~/.vim/bundle/vundle
call vundle#rc("~/.vim/bundle/")

" Plugins are in their own file, go figure
call s:SourceConfigFilesIn('plugins')

filetype plugin indent on
syntax on

" Parse all vim configurations
call s:SourceConfigFilesIn('config')
