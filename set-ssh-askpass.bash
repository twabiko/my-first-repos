#!bash

# usage: source ./set-ssh-askpass

file=$HOME/.ssh_askpass.sh
if [ ! -e $file ]; then
	echo -n 'password:'
	read password
	cat <<__BASH__ > $file
echo '$password'
__BASH__
	chmod -v +x $file
fi
set SSH_ASKPASS=$file
