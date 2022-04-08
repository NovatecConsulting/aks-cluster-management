# https://github.com/jenkinsci/docker-inbound-agent
FROM jenkins/inbound-agent:4.13-1

USER root

ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update && \
    apt-get install --no-install-recommends \
        apt-transport-https \
        ca-certificates \
        curl \
        jq \
        gnupg \
        lsb-release

RUN curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | \
    gpg --dearmor | \
    tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null
RUN AZ_REPO=$(lsb_release -cs) && echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-get update && \
    apt-get install --no-install-recommends \
        azure-cli && \
    az version

USER jenkins
