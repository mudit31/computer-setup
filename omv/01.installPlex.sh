docker image pull ghcr.io/linuxserver/plex
docker run --detach \
  --name=plex \
  --net=host \
  --env PUID=1000 \
  --env PGID=100 \
  --env VERSION=docker \
  --volume /srv/dev-disk-by-label-blue/plexconfig:/config \
  --volume /srv/dev-disk-by-label-blue/blue/tv:/tv \
  --volume /srv/dev-disk-by-label-blue/blue/movies:/movies \
  --volume /srv/dev-disk-by-label-blue/blue/workouts:/workouts \
  --volume /srv/dev-disk-by-label-blue/blue/documentaries:/documentaries \
  --volume /srv/dev-disk-by-label-blue/blue/music:/music \
  --volume /srv/dev-disk-by-label-blue/blue/soundtracks:/soundtracks \
  --volume /srv/dev-disk-by-label-blue/blue/audiobooks:/audiobooks \
  --restart unless-stopped \
  ghcr.io/linuxserver/plex
