FROM ocaml/opam:ubuntu-21.04-ocaml-4.06

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - \
 && sudo apt-get install -y nodejs

RUN sudo apt-get update \
 && sudo apt-get -y install --no-install-recommends m4 \
 && export DEBIAN_FRONTEND=noninteractive \
 # Clean up
 && sudo apt-get autoremove -y \
 && sudo apt-get clean -y \
 && sudo rm -rf /var/lib/apt/lists/*

RUN opam update \
 && opam install ocaml-lsp-server
