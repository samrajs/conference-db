FROM postgres-wal2json:12-alpine
RUN mkdir /sqls
RUN chown postgres /sqls
COPY --chown=postgres sqls/*.sql /sqls/
COPY install-db.sh /docker-entrypoint-initdb.d/