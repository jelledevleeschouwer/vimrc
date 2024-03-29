all: install

install: ~/.vimrc ~/.tmux.conf /usr/local/bin/vim
	@if ! hash curl 2>/dev/null; then \
	echo "'curl' was not found in PATH, installing..."; \
	sudo apt-get install curl; \
	else \
	echo "Has curl... yes"; \
	fi

vim: /usr/local/bin/vim
/usr/local/bin/vim: ~/.vim/vim/src/auto/config.h
	$(MAKE) -C ~/.vim/vim
	sudo $(MAKE) -C ~/.vim/vim install

~/.vim/vim/src/auto/config.h: ~/.vim/vim
	cd ~/.vim/vim && ./configure \
		--enable-gui=yes \
		--enable-pythoninterp=yes \
		--enable-python3interp=yes \
		--enable-cscope=yes \
		--enable-luainterp=yes \
		--enable-tclinterp=yes \
		--enable-perlinterp=yes \
		--with-x

~/.vim/vim:
	@git clone git@github.com:vim/vim.git $@

uninstall_vim: ~/.vim/vim/src/auto/config.h
	sudo $(MAKE) -C ~/.vim/vim uninstall distclean clean
	cd ~/.vim/vim/ && git clean -xdf

install_clang_complete:
	@cd ~/.vim/plugged/clang_complete/ && $(MAKE) install

uninstall_clang_complete:
	@cd ~/.vim/plugged/clang_complete/ && $(MAKE) uninstall

install_konsole:
	@if [ -f ~/.local/share/konsole.bckp ] || [ -d ~/.local/share/konsole.bckp ]; then \
		echo "konsole.bckp already exists!"; \
	else \
		mv ~/.local/share/konsole ~/.local/share/konsole.bckp; \
		ln -s ~/.vim/konsole ~/.local/share/konsole; \
	fi;

clean:
	rm -f ~/.vimrc ~/.tmux.conf

~/%: %
	@ln -s $(realpath $<) $@

.PHONY: clean vim
