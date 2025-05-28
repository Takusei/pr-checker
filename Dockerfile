FROM ubuntu:22.04 as builder

RUN apt-get update && apt-get -qqy upgrade && apt-get install -qqy \
    curl \
    apt-transport-https \
    lsb-release \
    gnupg \
    git \
    jq 


WORKDIR /home/
RUN curl -L0 https://github.com/cli/cli/releases/latest/download/gh_2.73.0_linux_amd64.deb -o gh.deb && \
    dpkg -i gh.deb && \
    rm gh.deb

WORKDIR /home/src
COPY ./pr_checker.sh /home/src/pr_checker.sh
RUN chmod +x pr_checker.sh

