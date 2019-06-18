ARG version=latest
FROM ubuntu:$version
#MAINTAINER JCD "jcd717@outlook.com"

LABEL mantainer = "JCD jcd717@outlook.com" \
      description="test" \
      auteur ="nicolas Morvan"


COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh ; \
    echo coucou > test.txt
ARG hbs=3
ENV HEARTBEATSTEP $hbs 
#ENV HEARTBEATSTEP 3

#information utile au niveau réseau
EXPOSE 1234

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]