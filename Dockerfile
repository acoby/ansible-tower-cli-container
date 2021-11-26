FROM python:alpine
LABEL maintainer="TRW <trw@acoby.de>"

RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev openssl-dev

RUN /usr/local/bin/python3 -m pip install --upgrade pip && \
  /usr/local/bin/python3 -m pip --no-cache install netaddr passlib requests && \
  /usr/local/bin/python3 -m pip --no-cache install ansible-tower-cli && \
  /usr/local/bin/python3 -m pip --no-cache install ansible && \
  apk del .build-deps gcc musl-dev libffi-dev openssl-dev

CMD ["/usr/local/bin/tower-cli", "--help"]
