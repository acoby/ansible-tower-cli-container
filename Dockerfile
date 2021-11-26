FROM python:alpine
LABEL maintainer="TRW <trw@acoby.de>"

RUN /usr/local/bin/python3 -m pip install --upgrade pip && \
  /usr/local/bin/python3 -m pip --no-cache install netaddr passlib requests && \
  /usr/local/bin/python3 -m pip --no-cache install ansible-tower-cli

CMD ["/usr/local/bin/tower-cli", "--help"]
