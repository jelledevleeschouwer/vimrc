all: install

install: ~/.vimrc ~/.tmux.conf
	@if ! hash curl 2>/dev/null; then \
	echo "'curl' was not found in PATH, installing..."; \
	sudo apt-get install curl; \
	else \
	echo "Has curl... yes"; \
	fi

install_clang_complete:
	@cd ~/.vim/plugged/clang_complete/ && make install

uninstall_clang_complete:
	@cd ~/.vim/plugged/clang_complete/ && make uninstall

clean:
	rm -f ~/.vimrc ~/.tmux.conf

~/%: %
	@ln -s $(realpath $<) $@

.PHONY: clean
