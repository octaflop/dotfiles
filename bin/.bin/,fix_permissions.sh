#!/bin/sh

# Fix permissions after restoring a backup from exfat
sudo chown -R $(whoami):$(whoami) $HOME

find $HOME -type f -print0 | xargs -0 chmod 664
find $HOME -type d -print0 | xargs -0 chmod 775

find $HOME/.ssh -type d -print0 | xargs -0 chmod 700
find $HOME/.ssh -type f -print0 | xargs -0 chmod 600

