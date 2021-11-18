FROM debian:stretch
RUN apt-get update && apt-get install -y pike7.8=7.8.866-?
RUN groupadd --system --gid 999 pike && \
  useradd --system --gid pike --uid 999 pike
