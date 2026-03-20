FROM alpine:latest

RUN apk update && apk add --no-cache git curl bash && \
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.alpine.sh | sh && \
    apk add --no-cache git-lfs && \
    git lfs install

WORKDIR /workspace
CMD ["sh"]