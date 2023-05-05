#!/bin/bash

APPS=~/.local/apps

curl https://dl.discordapp.net/apps/linux/0.0.27/discord-0.0.27.tar.gz --output ~/Downloads/discord.tar.gz
tar -xf ~/Downloads/discord.tar.gz -C $APPS
ln -sT $APPS/Discord/Discord ~/.local/bin/discord
