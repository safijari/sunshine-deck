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

# Build Instructions for the Cool People Reading This and who rightfully don't trust a strange man's pre-compiled unsigned software
- Use rwfus or steamos-devmode (just use rwfus)
- If using rwfus, once you have the overlay active run [this](https://gist.github.com/safijari/69a1a6fbfc1d2aef7cb41884c7d99fc6), you don't need all these things but whatevs
- `git clone https://aur.archlinux.org/sunshine.git` somewhere, go into the `sunshine` folder just created
- `makepkg --syncdeps --noconfirm`, this will take some time
- inside this folder is pkg and inside it is the sunshine directory, rename it to sunshine-deck
- copy the first_time_setup.sh and run.sh scripts inside this folder, take them from the previous version, you may have to make some changes here (e.g. the old build used to have sunshine at ./usr/local/bin/sunshine and the new build had it at ./usr/bin/sunshine
- go into the `./usr/bin` folder where the sunshine directory is and `mkdir vendored`
- now run `ldd sunshine | awk 'NF == 4 { system("cp " $3 " vendored") }'` to copy over all dynamic libraries that sunshine relies on to the vendored folder
- ??? change rpath ???
- now you can tar it up by running `tar -czf sunshine-deck.tar.gz sunshine-deck/`
