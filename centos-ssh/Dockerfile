FROM centos
MAINTAINER Marco Gordillo <marcopgordillo@gmail.com>
LABEL description="centos image with ssh"
ONBUILD yum -y update && yum clean all
ADD ./files/start.sh /start.sh
RUN yum -y install deltarpm && yum -y update && \
	yum -y install openssh-server passwd sudo iproute && \
	yum clean all && \
	mkdir /var/run/sshd && \
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' && \
	chmod 755 /start.sh && \
	./start.sh && \
	usermod -G wheel user
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
	
