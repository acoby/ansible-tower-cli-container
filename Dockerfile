FROM python:alpine
LABEL maintainer="TRW <trw@acoby.de>" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.version="1.1.0" \
      org.label-schema.name="ansible-tower-cli" \
      org.label-schema.description="A simple container wrapper around a command line tool" \
      org.label-schema.url="https://github.com/acoby/ansible-tower-cli-container" \
      org.label-schema.vendor="acoby GmbH"

ENV TZ Europe/Berlin

RUN apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev openssl-dev && \
  /usr/local/bin/python3 -m pip install --upgrade pip && \
  /usr/local/bin/python3 -m pip --no-cache install netaddr passlib requests && \
  /usr/local/bin/python3 -m pip --no-cache install ansible-tower-cli && \
  /usr/local/bin/python3 -m pip --no-cache install ansible && \
  /usr/local/bin/python3 -m pip --no-cache install awxkit && \
  apk del .build-deps gcc musl-dev libffi-dev openssl-dev

COPY run-cli /usr/local/bin/run-cli
CMD ["/usr/local/bin/tower-cli", "--help"]
