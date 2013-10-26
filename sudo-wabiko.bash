#!/bin/bash -x
echo "wabiko ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/wabiko
chmod -v 600 /etc/sudoers.d/wabiko
exit 0
