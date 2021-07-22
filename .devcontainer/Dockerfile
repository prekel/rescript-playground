FROM ubuntu-21.04-ocaml-4.06

# RUN sudo -u node npm install -g bs-platform esy@latest

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - \
    && apt-get install -y nodejs

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    # Clean up
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
