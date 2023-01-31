# Instructions
- Download the sunshine-deck.tar.gz from releases
- Extract it somewhere under your Deck's home directory (SteamOS updates can remove files that are above this level). I just put it in home so it looks like `/home/deck/sunshine-deck`
- In a terminal, go to this folder and run `./first_time_setup.sh`. You'll need to enter your root password (i.e. you'll need a root password). Make sure this does not error out. Successful runs of this should produce no output.
- Now in that same folder try doing `./run.sh`. If you're in gamemode and running a terminal (or ssh-ed in while in gamemode) you should see a line that says "Screencasting with KMS" followed by "Found monitor for DRM screencasting".
- To launch this from gamemode you can set up a non-steam shortcut like in the picture below. Just make sure you set the "Start In" value as wherever the `run.sh` file is.

![instructions](https://user-images.githubusercontent.com/5191844/215850351-78e5e8eb-17cb-4279-97fa-8d1aaa4647ba.jpg)

The rest of this is just instructions for setting up Sunshine and Moonlight. I'll give cliff notes below but you should check the respective documentations.

- Once you have the server running, you can go to your client computer, run moonlight, and the Deck should show up as a device you can connect to. Click it and it'll give you a pin. In a browser go to `https://<Deck's IP>:47990`, go through the one time setup of making a username and password (remember this as changing it later will require you to venture out into the terminal lands), login, click on "Pin", and enter the pin moonlight gave you. You should now be able to connect.
