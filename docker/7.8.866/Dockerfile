FROM debian:stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
  pike7.8=7.8.866-? pike7.8-core=7.8.866-? pike7.8-image=7.8.866-? \
  pike7.8-gdbm=7.8.866-? pike7.8-pcre=7.8.866-? \
  pike7.8-mysql=7.8.866-? pike7.8-pg=7.8.866-? pike7.8-dev=7.8.866-? \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN groupadd --system --gid 999 pike && \
  useradd --system --gid pike --uid 999 pike
