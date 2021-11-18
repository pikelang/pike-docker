FROM debian:bullseye
RUN apt-get update && apt-get install -y pike8.0=8.0.1116-?
RUN groupadd --system --gid 999 pike && \
  useradd --system --gid pike --uid 999 pike
