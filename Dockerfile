FROM python:alpine
LABEL maintainer="Perrit B.V. <support@perrit.nl>"
RUN ["/usr/local/bin/pip", "--no-cache", "install", "ansible-tower-cli"]
CMD ["/usr/local/bin/tower-cli", "--help"]
