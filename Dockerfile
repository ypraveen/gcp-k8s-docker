FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y sudo
RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-xenial main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN apt-get install -y curl
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
RUN sudo apt-get update && sudo apt-get install -y google-cloud-sdk
RUN sudo apt-get install -y kubectl

