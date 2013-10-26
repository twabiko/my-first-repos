#!/bin/bash -x
echo -n 'email: '
read email
git config --global user.name "twabiko"
git config --global user.email "$email"
exit 0
