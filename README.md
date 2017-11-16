# cleandesk
A command-line utility for cleaning a directory by file extension.

## What is cleandesk?
The `cleandesk` utility moves files in the given directory to subdirectories based on extension. It was inspired by the Mac AppleScript [CleanDesk](https://www.macupdate.com/app/mac/23604/cleandesk), but made much simpler.

It has only been tested on macOS, but should function on most Unix-like systems. Caution is raised to the use of the `find` command, which is used to lowercase the extensions of all files.

## Usage:
`cleandesk directory` or `cleandesk` (for current directory).

### Adding extensions
The following is an example of how a new category is created:
```
FOLDER="Various"
RULES="dmg app apkg nes mus ram ics"
sortspt $FOLDER "$RULES"
```
`$FOLDER` is the name of the new directory, and `$RULES` is the list of extensions, separated by spaces.
The last line is a call to the function that does all the dirty work.

To add more extensions to an existing rule, simply add them to the given `$RULES`.
To add a new category, repeat this function call with different arguments.
