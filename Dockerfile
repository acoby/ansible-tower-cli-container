FROM python:alpine
RUN ["pip", "install", "ansible-tower-cli"]
ENTRYPOINT ["tower-cli"]