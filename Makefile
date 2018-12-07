all: install

install: ~/.vimrc ~/.tmux.conf vim
	@if ! hash curl 2>/dev/null; then \
	echo "'curl' was not found in PATH, installing..."; \
	sudo apt-get install curl; \
	else \
	echo "Has curl... yes"; \
	fi

vim:
	@git clone git@github.com:vim/vim.git ~/.vim/vim/
	@cd ~/.vim/vim/
	./configure \
		--enable-gui=yes \
		--enable-python3interp=yes \
		--enable-cscope=yes \
		--enable-luainterp=yes \
		--enable-tclinterp=yes \
		--with-x
	make
	sudo make install

install_clang_complete:
	@cd ~/.vim/plugged/clang_complete/ && make install

uninstall_clang_complete:
	@cd ~/.vim/plugged/clang_complete/ && make uninstall

clean:
	rm -f ~/.vimrc ~/.tmux.conf

~/%: %
	@ln -s $(realpath $<) $@

.PHONY: clean
