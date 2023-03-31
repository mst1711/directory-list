FROM ubuntu:20.04

LABEL version="1.2.0" \
      repository="https://github.com/mst1711/directory-list" \
      homepage="https://github.com/mst1711/directory-list" \
      maintainer="Mikhail Makarov" \
      com.github.actions.name="Directory List" \
      com.github.actions.description="Temporary action" \
      com.github.actions.icon="check" \
      com.github.actions.color="green"

WORKDIR /opt
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
