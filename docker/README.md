# Core101 Docker Toolchain Documentation
This readme file is intended to explain how to use the RV32I software toolchain for Core101. The instalation, setup and use processes will be discussed in the following sections. Additional comments and remarks will be in the final section of the document. Make sure that you read this document entirely before executing any steps of the process.

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

## Software101 Docker Setup
To setup the Docker Software101 image run the following console comands. Make sure that this folder is your current directory and mind the dot at the end.

	$ docker build -t software101:latest .

This command will build an image for Software101. To run an instance of the image (i.e. a container):

	$ docker run -it --name software101 software101:latest

Once the container is launched, you will come up with a bash console with a different prefix from your computer. This means that you are working inside the Software101 container.
