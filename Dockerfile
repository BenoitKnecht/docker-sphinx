FROM alpine:3.4

RUN apk --update add gcc git musl-dev py-pip python-dev && \
    pip install -U sphinx==1.3.5 Pygments==2.1.3 setuptools==20.1.1 \
                   docutils==0.12 mkdocs==0.15.0 mock==1.0.1 pillow==2.6.1 \
                   git+https://github.com/rtfd/readthedocs-sphinx-ext.git@0.6-alpha#egg=readthedocs-sphinx-ext \
                   sphinx-rtd-theme==0.1.9 'alabaster>=0.7,<0.8,!=0.7.5' \
                   commonmark==0.5.4 recommonmark==0.1.1 && \
    apk del git gcc python-dev musl-dev && \
    rm -rf /root/.cache /var/cache/apk/*

CMD /bin/sh
