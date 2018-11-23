FROM python:alpine
LABEL maintainer="Perrit B.V. <support@perrit.nl>"
RUN pip install ansible-tower-cli
