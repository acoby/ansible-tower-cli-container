FROM python:alpine
LABEL maintainer="Perrit B.V. <support@perrit.nl>"
RUN ["/usr/local/bin/pip", "install", "ansible-tower-cli"]
