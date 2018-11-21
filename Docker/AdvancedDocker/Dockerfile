FROM debian:jessie

RUN apt-get update && apt-get install -y \
    gcc \
    build-essential

COPY containers/ /containers/
WORKDIR /containers
CMD ["bash"]