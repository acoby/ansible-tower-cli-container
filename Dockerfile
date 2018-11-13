FROM python as build
RUN apt-get update
RUN apt-get install -y patchelf
RUN pip install ansible-tower-cli pyinstaller staticx
RUN pyinstaller --onefile /usr/local/bin/tower-cli
RUN staticx /dist/tower-cli /tower-cli

FROM busybox as shell

FROM scratch
COPY --from=build /tower-cli /tower-cli
COPY --from=shell /bin/sh /bin/sh
VOLUME /tmp/
ENTRYPOINT ["/tower-cli"]
