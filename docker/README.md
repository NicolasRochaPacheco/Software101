# Core101 Docker Toolchain Documentation
This readme file is intended to explain how to use the RV32I software toolchain for Core101. The instalation, setup and use processes will be discussed in the following sections. Additional comments and remarks will be in the final section of the document.

## Docker instalation
To install Docker on Ubuntu, please run the following console commands:

	$ sudo apt-get update
	$ sudo apt-get 	install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    $ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    $ sudo apt-get update
    $ sudo apt-get install docker-ce docker-ce-cli containerd.io

If you want to use Docker without root permissions (sudo), please run this additional commands:

    $ sudo groupadd docker
    $ sudo usermod -aG docker $USER
    $ newgrp docker

To check the Docker instalation:

	$ docker run hello-world
