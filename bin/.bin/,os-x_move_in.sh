#!/bin/bash

defaults write com.apple.finder AppleShowAllFiles YES
defaults write -g ApplePressAndHoldEnabled -bool false

# Support external bluetooth adapters
sudo nvram bluetoothHostControllerSwitchBehavior=always

sudo defaults write /System/Library/LaunchAgents/com.apple.gamed disabled -bool true

if ! [ -e /usr/local/bin/brew ]; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew doctor
fi

if ! [ -e /usr/local/bin/brew-cask ]; then
    # Install Homebrew Cask
    brew tap caskroom/cask
    brew install caskroom/cask/brew-cask
fi

if [ -d "/Applications/Little\ Snitch\ Configuration.app" ]; then

    brew cask install little-snitch
    echo "Reboot, or run this script again"

else

    brew cask install \
        alfred \
        caffeine \
        dash \
        displaylink \
        evernote \
        gfxcardstatus \
        google-chrome \
        iterm2 \
        itsycal \
        lastpass \
        nicecast \
        mou \
        musicbrainz-picard \
        rescuetime \
        spamsieve \
        steam \
        switchresx \
        the-unarchiver \
        transmission \
        transmit \
        vagrant \
        vagrant-manager \
        vlc \
        vmware-fusion

    brew install \
         git \
	 git-extras \
         mercurial \
	 pt \
	 the_silver_searcher \
	 ack \
	 procmail \
	 fetchmail \
	 msmtp \
	 editorconfig \
	 direnv \
	 w3m \
	 tmux \
	 nmap \
	 gnutls \
	 hunspell

    brew install --HEAD mobile-shell

#        slack \

fi

if ! [ -d '/Applications/LastPass.app' ]; then

    brew cask install lastpass
    open '/opt/homebrew-cask/Caskroom/lastpass/latest/LastPass Installer.app'
    read -p "Press [Enter] key to continue..."
fi

./common_move_in.sh

open "/opt/homebrew-cask/Caskroom/little-snitch/3.5.1/Little Snitch Installer.app"

cd /System/Library/LaunchAgents
launchctl unload -w com.apple.photolibraryd.plist
launchctl unload -w com.apple.screensharing.MessagesAgent.plist
launchctl unload -w com.apple.screensharing.agent.plist
