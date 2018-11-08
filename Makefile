all: install

install: ~/.vimrc ~/.tmux.conf
	@if ! hash curl 2>/dev/null; then \
	echo "'curl' was not found in PATH, installing..."; \
	sudo apt-get install curl; \
	else \
	echo "Has curl... yes"; \
	fi

clean:
	rm -f ~/.vimrc ~/.tmux.conf

~/%: %
	@ln -s $(realpath $<) $@

.PHONY: clean
