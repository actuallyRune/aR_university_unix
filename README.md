# Description
Here come's the place for my unversities times unix projects

# Task one. sizeof.sh
The code suppose to yield given files size information into the terminal in one of given ways:
1. With no options it prints \[size\] \[filename\]
2. With -s option it prints the total size down below
3. With -S option it prints solely the total size
Script should also support -- separator and --usage and --help options
If the script find's an unsupported options, it has to halt itself, dropping the code 2 into the \>\&\2
And also:
- Arguments comes with a free order
- Script suppose to work correctle with the containing spaces files
- Script suppose to print error messages
- Source code suppose to look nice
- Script should not use any uninitialized variables
- Script should not use arrays
- Script suppose to use pipelines whenever is possible without saving results into the temprorary variables

# Task two. userhome
The script suppose to yeild given user's home directory \[executer's user by default\], 
founded in a given passwd-shaped file \[/etc/passwd by default\] 
> userhome \[-f file\] \[login\]
The script assume the file to be correctly structured

# Task three. topsize
The script suppose to yeild the list of N (default -- all) files, sorted descending by the filesize,
from the given directory (-ies) and their subdirectories.
> topsize \[--help\] \[-h\] \[-N\] \[-s minsize\] \[--\] \[dir...\]
Whereas:
- --help = help information
- -N = natural number, the list size
- -h = human-readable sizes output
- dir... given directories

# Task four. inssfx
The script should insert the given suffix before the file extention
(e.g. "sfx": "a" -> "asfx", "a.txt" -> "asfx.txt", "a.b.c" -> a.bsfx.c)
> inssfx \[suffix\] \[-h\] \[-d\] \[-v\] \[fname\] \[--] \[fname...\]
The first non-optional argument is a suffix. All of the next ones are filenames of the file
Options:
- -h = print help
- -d = print new fnames without renaming the file
- -v = print the new filenames (which is off by default)
