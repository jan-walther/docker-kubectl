FROM ubuntu:18.04

RUN apt-get update && apt-get install -y apt-transport-https gpg curl
RUN bash -c "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"
RUN bash -c "echo 'deb https://apt.kubernetes.io/ kubernetes-xenial main' | tee -a /etc/apt/sources.list.d/kubernetes.list"
RUN apt-get update
RUN apt-get install -y kubectl
RUN useradd -ms /bin/bash k8s
USER k8s
