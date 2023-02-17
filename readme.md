# Instructions
- Download the sunshine-deck.tar.gz from releases
- Extract it somewhere under your Deck's home directory (SteamOS updates can remove files that are above this level). I just put it in home so it looks like `/home/deck/sunshine-deck`
- In a terminal, go to this folder and run `./first_time_setup.sh`. You'll need to enter your root password (i.e. you'll need a root password). Make sure this does not error out. Successful runs of this should produce no output.
- To auto start sunshine in both desktop and game mode, create a file name sunshine_deck.service inside /home/deck/.config/systemd/user/ with the following contents:
```
[Unit]
Description=sunshine deck stream
SourcePath=/home/deck/sunshine-deck/run.sh

[Service]
Type=simple
WorkingDirectory=/home/deck/sunshine-deck
ExecStart=/home/deck/sunshine-deck/run.sh
Restart=on-failure
RestartSec=10

[Install]
WantedBy=default.target
```
Then run:
- systemctl --user enable sunshine_deck
- systemctl --user start sunshine_deck

The rest of this is just instructions for setting up Sunshine and Moonlight. I'll give cliff notes below but you should check the respective documentations.

- Once you have the server running, you can go to your client computer, run moonlight, and the Deck should show up as a device you can connect to. Click it and it'll give you a pin. In a browser go to `https://<Deck's IP>:47990`, go through the one time setup of making a username and password (remember this as changing it later will require you to venture out into the terminal lands), login, click on "Pin", and enter the pin moonlight gave you. You should now be able to connect.
