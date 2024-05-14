# Dummy Dockerfile for testing

FROM ubuntu:20.04

# Set dummy tool versions
ENV GO_VERSION=1.22.3
ENV GITLEAKS_VERSION=8.18.2
ENV TRUFFLEHOG_VERSION=3.7.1
ENV TALISMAN_VERSION=1.32.0

# Install Go
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:longsleep/golang-backports && \
    apt-get update && \
    apt-get install -y golang-${GO_VERSION}-go

# Install Gitleaks
RUN go install github.com/zricethezav/gitleaks/v${GITLEAKS_VERSION}@latest

# Install TruffleHog
RUN pip3 install trufflehog==${TRUFFLEHOG_VERSION}

# Install Talisman
RUN curl -sSL https://github.com/thoughtworks/talisman/releases/download/v${TALISMAN_VERSION}/talisman_${TALISMAN_VERSION}_linux_amd64.zip -o talisman.zip && \
    unzip talisman.zip && \
    mv talisman_linux_amd64/talisman /usr/local/bin/ && \
    rm -rf talisman.zip talisman_linux_amd64

CMD ["/bin/bash"]
