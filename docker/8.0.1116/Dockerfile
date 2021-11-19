FROM debian:bullseye

RUN apt-get update && apt-get install -y --no-install-recommends \
  pike8.0=8.0.1116-? pike8.0-core=8.0.1116-? pike8.0-image=8.0.1116-? \
  pike8.0-gdbm=8.0.1116-? pike8.0-pcre=8.0.1116-? \
  pike8.0-mysql=8.0.1116-? pike8.0-pg=8.0.1116-? pike8.0-dev=8.0.1116-? \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN groupadd --system --gid 999 pike && \
  useradd --system --gid pike --uid 999 pike
