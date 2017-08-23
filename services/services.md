# Services: PLISTs and Startscripts

## Postgres Homebrew

The standard brew launcher config is a bit too simple.
```postgres-brew.sh``` can be used both as in plist description and on command line, and is configurable by environment variables.
```net.rgielen.brew.postgres.plist``` is a launchd descriptor that uses the script - at least username and location have to be adjusted for your own needs.

Sample installation as daemon:
```
cd ~/dotfiles/services/plists
sudo chown root:wheel net.rgielen.brew.postgres.plist
sudo ln -sfv ${PWD}/net.rgielen.brew.postgres.plist /Library/LaunchDaemons/
sudo launchctl load /Library/LaunchDaemons/net.rgielen.brew.postgres.plist
```
