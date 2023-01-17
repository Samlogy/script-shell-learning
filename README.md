# Script Shell (bash)

learning scriptshell (bash)

## What's Bash ?

Command line interpreter for interacting with the computer from the CLI (shell) --> coquille qui entoure le système

## Script shell

bash allows us to write scripts (automate cli with code)
a file must start with: #! /usr/bin/bash
code will be interpreted line by line

## Content

- variables / constants
- arithmetic operations
- comparaison
- conditions
- loops
- functions
- Strings
- Arrays
- working- with- files
- positional- parameters
- execute- linux- command- line

Commands:
ssh - kill - less - lsof - awk

find: locate / search files & directories
    find {path} {name of the file or directory to search} {action to take}
    ex: find . -name hello1.txt  (search for hello1.txt file)

    find . -name hello1.txt  (hello1.txt)
    find . -name *.txt  (file extension .txt)
    find ./ -name "hel*"   (dirs / files start with hel)
    find ./ -type f -name "hel*" (type file only) [f file / d directory / l Symbolic link / c Character devices / b  Block devices]
    find ./ -iname "hel*"  (case insensitive)
    find . -type f -exec grep -l -i "hello" {} \; (find files that contain certain text)
    find / -size 20M (find files / dirs of 20mb ) [M- Megabytes / G- Gigabytes / b- bytes / K- kilobytes]
    find -size +3M  (find files that are bigger than 3mb)
    find . -type f -size -1M (find files that are smaller than 1mb)
    find / -size +1M -size -3M 2>>/dev/null  (find files that contain size between 1-3mb) 
    find / -name -mtime -10 (search files/dir modified ) [-10: less 10 days / +10: 10 days ago / 10: exactly 10 days ]

grep: filter the content of file to make our search easy
    "Grep"
    grep <searchWord> <file name>  (withour PIPE) 
    grp string-name content (display lines that matched the string-name)
    grep -v string-name content (display result that do not match searched string)
    grep -i red content (result all where red appear case insensitive)

    grep -A<lineNumber> <searchWord> <fileName>  (display line number before the result)
    grep -B<lineNumber> <searchWord> <fileName>  (display line number after the result)
    grep -C<lineNumber> <searchWord> <fileName>  (display line number before & after the result)   

    grep -r "string-name" * (search recursively for string-name in all files)
    grep -c "string-name" content (count number of time where string-name matched)
    grep -n "string-name" content (display where string-name matched)
    grep -w "string-name" content (the line with the exact matching string-name)

    "Grep + Pipe"
    command | grep <searchWord>   (with PIPE)
    dpkg -L | grep "package-name" (to see if package-name is installed in ubuntu) 

    "Grep + Regex"
    ^      Matches characters at the beginning of a line
    $      Matches characters at the end of a line
    "."    Matches any character
    [a-z]  Matches any characters between A and Z
    [^ ..] Matches anything apart from what is contained in the brackets
    
    ex: grep ^p content (display all string that start with p character in content file)

    "wget" donwload a resource
    wget <fileLink>  

    "curl" donwload a resource
    curl -O <fileLink>  

