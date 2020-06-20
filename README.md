# MusicBot dockerized with environment variables

## Setup
Use Docker build /path/to/musicbot

Then wait for it to build and use the id of the image to start the bot.

docker run --name MusicBot -e TOKEN=DISCORD-TOKEN -e SPOTIFY_ID=SPOTIFY-ID -e SPOTIFY_SECRET=SPOTIFY-SECRECT -e PREFIX=b IMAGEID
