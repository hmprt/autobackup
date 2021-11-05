# Automated backup
- A system daemon for automatically backing up git repos on a set periodicity
- Intended for use with a `.config` folder or similar

## Usage
- `backup.sh <BACKUP_PATHS>` 
- `BACKUP_PATHS` is a newline-delimited file of absolute paths to git project folders

## Installation
- Add something like the following to your user crontab with `crontab -e`: `0 12 * * * /path/to/script/backup.sh backup_paths.txt`
- The above will run this script every day at midday
## Notes
- Ensure that a global github username and access token are configured
