# 使用轻量级 Alpine 作为基础镜像
FROM alpine:latest

# 避免交互式提示
ENV DEBIAN_FRONTEND=noninteractive

# 安装 git、bash、curl 和 ca-certificates（确保 HTTPS 能用）
RUN apk update && apk add --no-cache \
    git \
    bash \
    curl \
    ca-certificates \
    openssh-client \
    unzip \
    && rm -rf /var/cache/apk/*

# 安装 Git LFS
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.alpine.sh | sh && \
    apk add --no-cache git-lfs && \
    git lfs install

# 设置工作目录
WORKDIR /workspace

# 默认启动 bash
CMD ["bash"]