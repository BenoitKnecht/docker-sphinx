FROM alpine:3.7

RUN apk --update add gcc git libjpeg-turbo-dev musl-dev py-pip python-dev zlib-dev && \
    pip install -U sphinx==1.6.5 Pygments setuptools \
                   docutils mkdocs mock pillow \
                   git+https://github.com/rtfd/readthedocs-sphinx-ext.git \
                   sphinx-rtd-theme alabaster \
                   commonmark git+https://github.com/rtfd/recommonmark.git && \
    apk del git gcc libjpeg-turbo-dev python-dev musl-dev zlib-dev && \
    rm -rf /root/.cache /var/cache/apk/*

CMD /bin/sh
