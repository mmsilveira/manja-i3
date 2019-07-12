#!/bin/bash

if [ ! -d ~/.ansible/plugins/modules/aur ]; then
	git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur
fi
