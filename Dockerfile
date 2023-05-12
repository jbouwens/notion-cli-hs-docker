# Use the official Haskell image
FROM haskell:8.10.7

# Install GHCup
RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# Set the PATH environment variable
ENV PATH /root/.ghcup/bin:$PATH

# Clone the repository
RUN git clone https://github.com/kurubushi/notion-cli-hs.git

# Build the binary
WORKDIR /notion-cli-hs
RUN rm -f cabal.project.freeze && \
    cabal update && \
    cabal build && \
    make notion-cli

# Install the created binary
RUN install -Dm755 notion-cli /usr/local/bin

# Set the working directory for data
WORKDIR /data
