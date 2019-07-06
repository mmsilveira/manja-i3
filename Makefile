tags?=all

.PHONY: provision
provision: 
	ansible-playbook -i inventory --ask-become-pass all.yml --tags="$(tags)"
