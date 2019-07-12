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

.PHONY: config
config:
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="config"

.PHONY: provision
provision: 
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="$(tags)"
