ARG PORT TOKEN
FROM gitpod/openvscode-server:latest
USER root
RUN apt-get install -y openssl
RUN apt-get update -y
USER openvscode-server
RUN apt-get --assume-yes install build-essential
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN git clone https://github.com/EudrinoDev/cargo-template.git
ENV OPENVSCODE_SERVER_ROOT=${OPENVSCODE_SERVER_ROOT}
ENV TOKEN=${TOKEN}
ENV PORT=${PORT}
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
