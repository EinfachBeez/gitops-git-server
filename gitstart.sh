#! /bin/sh
export HOME=/git

cd /git/gitops && git init --bare --initial-branch=main
chown -R git:git /git

mkdir -p /git/.ssh
touch /git/.hushlogin
cat /key > /git/.ssh/authorized_keys

mkdir /git/git-shell-commands
chown 987:987 /git/git-shell-commands
chmod 700 /git/git-shell-commands

chown 987:987 /git -R
chmod 700 /git/.ssh
chmod 600 /git/.ssh/authorized_keys

# /etc/init.d/ssh restart
