tags?=all

.PHONY: pre-install
pre-install:
	./scripts/pre-install.sh

.PHONY: git-config
git-config:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="git"

.PHONY: upgrade
upgrade:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="upgrade"

.PHONY: keybase
keybase:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="keybase"

.PHONY: pacman
pacman:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="pacman"

.PHONY: aur
aur:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="aur"

.PHONY: zsh
zsh:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="zsh"

.PHONY: neovim
neovim:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="neovim"

.PHONY: config
config:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="config"

.PHONY: provision
provision: 
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="$(tags)"
