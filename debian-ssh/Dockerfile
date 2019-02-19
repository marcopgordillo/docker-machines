FROM debian
MAINTAINER Marco Gordillo <marcopgordillo@gmail.com>
LABEL description="debian image with ssh"
ONBUILD apt-get update && apt-get upgrade -y && apt-get clean all
ADD ./files/start.sh /start.sh
RUN apt-get update &&apt-get install -y apt-utils && apt-get upgrade -y && \
	apt-get -y install openssh-server passwd sudo python && \
	apt-get clean all && \
	mkdir /var/run/sshd && \
	chmod 755 /start.sh && \
	./start.sh && \
	usermod -G sudo user
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
	
