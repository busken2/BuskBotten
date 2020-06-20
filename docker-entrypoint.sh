#!/bin/sh

if [[ ! -f "/musicbot/config/example_options.ini" ]]; then
    cp -r /musicbot/sample_config/* /musicbot/config
fi

    cat /musicbot/config/example_options.ini | sed \
	-e "s/%TOKEN%/$TOKEN/" \
	-e "s/%SPOTIFY_ID%/$SPOTIFY_ID/" \
	-e "s/%SPOTIFY_SECRET%/$SPOTIFY_SECRET/" \
	-e "s/%PREFIX%/$PREFIX/" \
	> /musicbot/config/options.ini

exec python3 run.py $@
