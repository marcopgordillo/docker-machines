#!/bin/bash
__create_user() {
SSH_USER=user
SSH_USERPASS=newpass
# Create a user to SSH into as.
	useradd $SSH_USER
	mkdir /home/$SSH_USER
	chown $SSH_USER. /home/$SSH_USER
	usermod -d /home/$SSH_USER -s /bin/bash $SSH_USER
	echo $SSH_USER:$SSH_USERPASS | chpasswd
	echo ssh user password: $SSH_USERPASS
}

# Call all functions
__create_user

