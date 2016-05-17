ALL=bash vim tmux
BACKUP=true
TIMESTAMP=$(shell date +%Y-%m-%d.%H:%M:%S)


link: $(ALL)

vim: ~/.vimrc ~/.editorconfig
tmux: ~/.tmux.conf
bash: ~/.bash_profile

~/.%: %
ifneq ("$(wildcard $@)", "")
ifeq ($(BACKUP), true)
	mv $@ $@.$(TIMESTAMP)
else
	rm $@
endif
endif
ifneq ("$(wildcard $(shell pwd)/$*)", "")
	ln -Fs $(shell pwd)/$* $@
else
	ln -Fs $(shell pwd)/$*/$* $@
endif

.PHONY: link vim tmux bash
