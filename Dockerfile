FROM linuxserver/radarr

RUN apt-get update
RUN apt-get install --no-install-recommends -y \
         python3  \
         python3-requests && \

 echo "**** cleanup ****" && \
 rm -rf \
	/app/radarr/bin/Radarr.Update \
	/tmp/* \
	/var/lib/apt/lists/* \
	/var/tmp/*

# ports and volumes
VOLUME /config
EXPOSE 7878

