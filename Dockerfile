FROM ubuntu:22.04

RUN apt-get update && apt-get install -y git curl bash unzip ca-certificates openssh-client \
    && curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash \
    && apt-get install -y git-lfs \
    && git lfs install \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
CMD ["bash"]