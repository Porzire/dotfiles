ALL=bash vim tmux
BACKUP=false
TIMESTAMP=$(shell date +%Y-%m-%d.%H:%M:%S)


link: $(ALL)

vim: ~/.vimrc ~/.editorconfig
tmux: ~/.tmux.conf
bash: ~/.bash_profile

~/.%: %
	if [[ -e $@ ]]; then \
	 	if $(BACKUP); then \
			mv $@ $@.$(TIMESTAMP); \
		else \
			rm $@; \
		fi \
	fi
	if [[ -e $(shell pwd)/$*/$* ]]; then \
		ln -Fs $(shell pwd)/$*/$* $@; \
	else \
		ln -Fs $(shell pwd)/$* $@; \
	fi

.PHONY: link vim tmux bash
