ARG PORT TOKEN
FROM gitpod/openvscode-server:1.70.0
USER root
RUN apt-get install -y openssl
RUN apt-get update -y
RUN apt-get --assume-yes install build-essential
USER openvscode-server
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN git clone https://github.com/EudrinoDev/cargo-template.git
ENV OPENVSCODE_SERVER_ROOT=${OPENVSCODE_SERVER_ROOT}
ENV TOKEN=${TOKEN}
ENV PORT=${PORT}
ADD start.sh /_railway/start.sh
ENTRYPOINT [ "/bin/sh", "/_railway/start.sh" ]
