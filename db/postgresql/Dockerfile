﻿FROM postgres:14.2-alpine AS installer

RUN buildDependencies="ca-certificates make git bison build-base flex clang clang-dev llvm12 llvm12-libs" \
  && apk add --update ${buildDependencies}
WORKDIR /usr/build
RUN git clone https://github.com/postgrespro/jsquery.git \
  && cd jsquery && make USE_PGXS=1 && make USE_PGXS=1 install
RUN apk del ${buildDependencies}


FROM sibedge/postgres-plv8-bigint:14.2-3.1.1-alpine 

COPY --from=installer /usr/local/lib/postgresql/jsquery.so /usr/local/lib/postgresql
COPY --from=installer /usr/local/share/postgresql/extension/jsquery--1.0--1.1.sql /usr/local/share/postgresql/extension
COPY --from=installer /usr/local/share/postgresql/extension/jsquery--1.1.sql /usr/local/share/postgresql/extension
COPY --from=installer /usr/local/share/postgresql/extension/jsquery.control /usr/local/share/postgresql/extension
