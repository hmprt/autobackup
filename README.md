# Automated backup
- A system daemon for automatically backing up git repos on a set periodicity
- Intended for use with a `.config` folder or similar

## Usage
- Add a file called `backup_paths.txt` with a newline-delimited list of paths to git project folders to back up
- Ensure that a global github username and access token are configured
- Clone this repo and add the above to your user crontab on whatever schedule you want
