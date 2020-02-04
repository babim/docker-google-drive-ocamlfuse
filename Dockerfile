FROM babim/ubuntubase:18.04

ENV DRIVE_PATH="/mnt/gdrive"

## ubuntu/debian
RUN apt-get update && \
    apt-get install -y wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh && \
    chmod 755 /option.sh

# install
RUN wget --no-check-certificate -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20gdrive%20install/gdrive_install.sh | bash

VOLUME ["$DRIVE_PATH"]
VOLUME ["/config"]

CMD ["/entrypoint.sh"]
