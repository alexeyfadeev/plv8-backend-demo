﻿FROM amd64/debian:buster-slim AS installer

RUN buildDependencies="ca-certificates make git" \
  && apt-get update && apt-get install -y --no-install-recommends ${buildDependencies}
WORKDIR /usr/build
RUN git clone https://github.com/alexeyfadeev/plv8-build.git
RUN apt-get clean \
  && apt-get remove -y ${buildDependencies} \
  && apt-get autoremove -y \
  && rm -rf /var/lib/apt/lists/*

FROM postgres:13.2
ENV PG_MAJOR_VERSION=13
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
RUN runtimeDependencies="libc++1" \
  && apt-get update \
  && apt-get install -y --no-install-recommends ${runtimeDependencies}
COPY --from=installer /usr/build/plv8-build/pkglibdir /usr/lib/postgresql/${PG_MAJOR_VERSION}/lib
COPY --from=installer /usr/build/plv8-build/extension /usr/share/postgresql/${PG_MAJOR_VERSION}/extension