#!/bin/bash

### JAVA ###
#SET ENVIRONMENT VARIABLES
#
#~/.bashrc
#export JAVA_HOME=/usr/lib/jvm/java-25-openjdk
#export PATH=$PATH:$JAVA_HOME/bin
#
#source ~/.bashrc

if type -p java > /dev/null; then
	echo "java is installed."
	java -version
else
	echo "java is not installed. installing java..."
	sudo apt update
	sudo apt install -y openjdk-25-jdk
	
	echo "java has been installed."
	java -version
fi

if type -p dotnet > /dev/null; then
	echo "c# is installed."
	dotnet --version

else 
	echo "c# is not installed. installing c#..."
	sudo apt-get update
	sudo apt install -y dotnet-sdk-8.0

	echo 'export PATH=$PATH:$HOME/dotnet' >> ~/.bashrc
	echo ".NET installation completed."
fi
