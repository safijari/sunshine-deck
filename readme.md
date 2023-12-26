# Instructions
Note: the old build is gone. It's possible to use the flatpak now but you'll need the nested desktop running. Hopefully soon that requirement will also go away.

1. Go to desktop mode, set up a sudo password if you haven't already
2. Search "Nested Desktop" in KDE, right click, add to steam
3. Go back to gamemode, run "Nested Desktop"
4. In Konsole, run `curl https://raw.githubusercontent.com/safijari/sunshine-deck/main/setup_sunshine_flatpak.sh | sh`
6. Run the SunshineDeck desktop icon that just showed up, do your setup and whatnot. Note that you might have to enter the name/ip of the Deck yourself, it might not show up in moonlight.

That's it. Now whenever you need to run Sunshine you can launch the nested desktop from gamemode and run that shortcut. Like I noted above it should soon be possible to do this without the Nested Desktop but for now that's how it is.
