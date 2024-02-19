FROM alpine:latest

# Install dependencies
RUN apk --no-cache add \
    python3 \
    py3-pip \
    groff \
    less \
    bash \
    curl

# Install AWS CLI
RUN pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir awscli --break-system-packages

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x kubectl \
    && mv kubectl /usr/local/bin/

CMD ["/bin/bash"]
