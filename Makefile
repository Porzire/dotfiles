ALL=bash vim tmux
BACKUP=false
TIMESTAMP=$(shell date +%Y-%m-%d.%H:%M:%S)
PREFIX=$(HOME)


link: $(ALL)

vim: $(PREFIX)/.vimrc $(PREFIX)/.editorconfig $(PREFIX)/.config/powerline
	@if [ ! -e $(PREFIX)/.vim/after/.vimrc-after ]; then \
		echo "$(PREFIX)/.vim/after/.vimrc-after <- $(shell pwd)/vimrc/after.vim"; \
		mkdir -p $(PREFIX)/.vim/after; \
		ln -s $(shell pwd)/vimrc/after.vim $(PREFIX)/.vim/after/.vimrc-after; \
	fi
	@if [ ! -e $(PREFIX)/.vim/bundle/Vundle.vim ]; then \
		git clone https://github.com/VundleVim/Vundle.vim.git $(PREFIX)/.vim/bundle/Vundle.vim; \
		vim +silent +PluginInstall +qall; \
	fi

tmux: $(PREFIX)/.tmux.conf
bash: $(PREFIX)/.bash_profile

$(PREFIX)/.config/%: config/%
	@echo "$@ <- $(shell pwd)/$<"
	@mkdir -p $(PREFIX)/.config
	@ln -Fs $(shell pwd)/$< $@

# Link ./<dotfile> to $(PREFIX)/.<dotfile>. If ./<dotfile> is expended to be a
# folder, link ./<dotfile>/<dotfile> instead.
$(PREFIX)/.%: %
	@if [ ! $(shell readlink $@) == $(shell pwd)/$*/$* ]; then \
		if [ -e $@ ] && $(BACKUP); then \
			mv $@ $@.$(TIMESTAMP); \
		else \
			rm -f $@; \
		fi; \
		if [ -d $(shell pwd)/$* ]; then \
			echo "$@ <- $(shell pwd)/$*/$*"; \
			ln -s $(shell pwd)/$*/$* $@; \
		else \
			echo "$@ <- $(shell pwd)/$<" \
			ln -s $(shell pwd)/$* $@; \
		fi \
	fi

.PHONY: link vim tmux bash
