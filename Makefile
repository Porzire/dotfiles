ALL=bash vim tmux
BACKUP=false
TIMESTAMP=$(shell date +%Y-%m-%d.%H:%M:%S)


link: $(ALL)

vim: ~/.vimrc ~/.editorconfig ~/.config/powerline
	@if test -d ~/.vim/after/.vimrc-after; then \
		echo "~/.vim/after/.vimrc-after <- $(shell pwd)/vimrc/after.vim"; \
		mkdir -p ~/.vim/after; \
		ln -s $(shell pwd)/vimrc/after.vim ~/.vim/after/.vimrc-after; \
	fi
tmux: ~/.tmux.conf
bash: ~/.bash_profile

~/.config/%: config/%
	@echo "$@ <- $(shell pwd)/$<"
	@mkdir -p ~/.config
	@ln -Fs $(shell pwd)/$< $@

~/.%: %
	@echo "$@ <- $(shell pwd)/$<"
	@if test -e $@ && $(BACKUP); then \
		mv $@ $@.$(TIMESTAMP); \
	else \
		rm -f $@; \
	fi
	@if test -d $(shell pwd)/$*; then \
		ln -s $(shell pwd)/$*/$* $@; \
	else \
		ln -s $(shell pwd)/$* $@; \
	fi

.PHONY: link vim tmux bash
