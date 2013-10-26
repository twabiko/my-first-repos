#!/bin/bash

user=wabiko
pwfile=/root/passwd_wabiko

function die { echo "$1" 1>&2; exit 1; }

test $(id -u) -eq 0 || die "must be root"
test -f $pwfile || die "$pwfile does not exists"

useradd -m $user
cat $pwfile | passwd --stdin $user
rm -iv $pwfile

exit 0
