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

*** Useful Commands: ***

    "find" (locate / search files & directories)
    find {path} {name of the file or directory to search} {action to take}
    ex: find . -name hello1.txt (search for hello1.txt file)

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

    "Grep" (filter the content of a file to simplify out search)
    grep <searchWord> <file name> (withour PIPE)
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

    "wget" donwload a file from internet
    wget <url> 
    wget -O sratoolkit.tar.gz <url> --> save file with a different name
    wget -P /home/renesh/software <ulr> --> save file under a different directory
    wget -P /home/renesh/software -O sratoolkit.tar.gz <url> --> save file with different name & different location
     
    "curl" donwload a file from internet
    curl -O <ulr>

    "locate" (same as find: search for files/directories)
    locate <file name>

    "less / more": (exploring large files) less is better than more options
    less <file name>  
    more <file name>
    //less has same feature as more, with some more

    "cat" display / merge / append
    cat <file name> --> display file content
    cat <file1> >> <file2> --> append content file to file2
    cat <file2> <file2> > merged_file --> merge file1 & file2 inside a new file merged_file (creates merged_file)

    "Archive"
    tar -xvf archive.tar --> extract files from archive .tar
    tar -tf archive.tar --> list tar archive without extraction
    tar -xvf archive.tar.gz --> extract file from archive .tar.gz
    tar -xvf file.tar.bz2 --> extract files from archive .tar.bz2

    tar -cvf archive.tar dir --> create a .tar archive
    tar -czvf archive.tar.gz dir --> create .tar.gz archive
    tar -cjvf archive.tar.bz2 dir --> create .tar.bz2 archive

    gzip file.fastq --> create .gzip file
    gunzip file.fastq --> unzip .gzip file

    gzip file.fastq --> create .gzip file
    gunzip file.fastq --> unzip .gzip file

    bzip2 file.fastq --> create .bzip2 file
    bunzip2 file.fastq --> unzip .bzip2 file

    zip archive.zip file.txt --> compress file
    zip -r archive.zip dir --> compress dir recursively (compress a directory)
    unzip -l archive.tar --> list zip archive without extraction
    unzip archive.zip --> unzip .zip file

    "STDIN - STDOUT - STDERR"
    (stdin)
    cat 0< file (cat will receive file as an input)
    cat < file
    (stdout)
    cat file2.txt file3.txt > stdout.txt >2 stderr.txt
    cat f1 f2 > f3 // > or  >1 (redirect standard output) 
    (stderr)
    cat f2 2> f-err // 2> (redirect standard error)
    cat f2 &> f-both // &> (redirect standard output & error) 
    cat f1 f2 > f3 2> f-err (stdout in f3 and stderr in f-err) 
    // f2: does not exist / f3: stdout / f-err: stderr / f-both: stdout + stderr 

    "which" (search absolute path of cmd/tools)
    which ls --> absolute path of ls command
    which vi --> absolute path of installed tool
    which blastn blastx --> absolute path of blastn and blastx

    "History"
    history --> access history of commands
    history 10 --> 10 latest cmds
    history | head --> 10 oldest cmds
    history tail --> 10 latest cmds
    history -d 100 --> delete cmd which is in the line 100
    history | grep unzip --> search from cmd with unzip

    "wc" & "uniq" counting purpose
    wc file.txt --> give all details number of file (lines, words, characters)
    wc -m file --> nbr of characters
    wc -l file --> nbr of lines in file
    wc -w file --> nbr of words in file
    
    uniq file.txt --> unique / duplicate line (prefix line, print, comparing lines, case sensitive)
    it requires a sorted file
    sort file | uniq -c --> count the unique line in a sorted file

    "Sort" sort file content in ascending / descending order / other filters(options)
    sort file.txt --> sort file in asc order (default)
    sort -r file.txt --> sort in desc

    "sed" & "tr"
    "sed" editing text
    sed 's/Chr1/Chr2/' file.txt --> replace chr1 with chr2 in file

    "tr" translate / delete characters
    cat file | tr 'h' 'H' --> change h to H in file then display content of file
    cat file | tr "hello" "HELLO" --> replace multiple characters in file
    cat file | tr -d "A" --> delete a specific character(s) in file

    "Help message command"
    mkdir --help --> detailed info about a cmd
    man mkdir --> manual of usage of a cmd
    info mkdir --> info about a cmd

    "ssh"
    connect to remote SSH server safely (login to the server in required)
    ssh username@remote_host --> (provide sam + password)
    ssh -X username@remote_host --> 
    // login with ssh Passwordless 

    "scp" copy data from a remote server to the localhost & vise versa (safely)
    From Remote to Local
    scp username@remote_host:PATH/FILE PATH/local/host --> for files
    scp -r username@remote_host:PATH/DIR PATH/local/host --> directory
    
    From Local to Remote
    cp PATH/local/host/FILE username@remote_host:PATH --> files
    scp -r PATH/local/host/DIR username@remote_host:PATH --> directory
## Environment Variables

Variables that specific to a certain environment
some env variables in linux: USER, HOME, SHELL, LANG, MAIL
ex: echo $HOME $USER $SHELL $LANG $MAIL

NB:
_ These environment variables vary based on the current user session.
_ display all envrironment variables in linux (env)
_ print an envrironment variables
printenv VARIABLE_NAME
echo $VARIABLE_NAME
_ set an envrironment variable in linux
Not Persistant: --> export VARIABLE_NAME=value
Persistant: --> same syntax + add it inside .bashrc file (at the end) save
Persistent Global Variable --> (it's a persistant environment variable accessible by all users)
export GLOBAL_VARIABLE="This is a global variable"
edit: /etc/environment
edit: /etc/profile (add this at the end) --> export GLOBAL_VARIABLE="This is a global variable"


## How to use VI
vi: The default editor that comes with the UNIX operating system is called vi (visual editor)

    "Basics vi"
    vi f1 --> opens f1 with vi
    vi -R f1 --> Opens an existing file in read only mode.
    view f1 --> Opens an existing file in read only mode.

    // VI workflow
    cmd mode --> insert mode (iIOaA)
    insert mode --> cmd mode (esc)
    insert mode --> escape mode (:q) 
    escape mode --> cmd mode (entrer)
    cmd mode --> escape mode (:)

    // Saving and Closing the file
    :q --> quit
    :wq --> save & quit
    :w --> Save the file but keep it open
    :q! –-> Quit vi and do not save changes
    Shift+zz –-> Save the file and quit

    // Moving within a file
    k --> Move cursor up
    j --> Move cursor down
    h --> Move cursor left
    l --> Move cursor right

    // VI Editing commands
    "WRITE / EDIT"
    i : Inserts text before current cursor location.
    I : Inserts text at beginning of current line.
    a : Inserts text after current cursor location.
    A : Inserts text at end of current line.
    o : Creates a new line for text entry below cursor location.
    O : Creates a new line for text entry above cursor location.
    r : Replace single character under the cursor with the next character typed.
    R : Replaces text from the cursor to right.
    s : Replaces single character under the cursor with any number of characters.
    S :Replaces entire line.

    "DELETE"
    X Uppercase: Deletes the character before the cursor location.
    x Lowercase : Deletes the character at the cursor location.
    Dw : Deletes from the current cursor location to the next word.
    d^ : Deletes from current cursor position to the beginning of the line.
    d$ : Deletes from current cursor position to the end of the line.
    Dd : Deletes the line the cursor is on.

    "COPY / PAST"
    Yy : Copies the current line.
    9yy : Yank current line and 9 lines below.
    p : Puts the copied text after the cursor.
    P : Puts the yanked text before the cursor.

    "SEARCH / REPLACE"
    :s/pattern/replace/ 
    :s/pattern
    :%s/pattern/replace/ 

    "Block DELETE CMD"
    :1d delete the line 1.
    :1,5d deletes the lines from 1 to 5.
    :10,$d deletes lines from 10th line to the last of the file. ($ means last line of file).
    :.,$d deletes lines from present line to that last line. (. means the present line).
    :.-3,.d deletes the lines from present line and above 2 lines (deletes 3 lines including the cursor line).
    :.,.+4d deletes the lines from present cursor line followed 3 lines (total 3 lines).
    :16 deletes the 16 line of the file.
    
    "Block COPY CMD"
    :1,5 co 10 copies the lines from 1 to 5 after 10th line.
    :1,$ co $ copies the lines from 1 to last line after last line.
    :.,.+5 co 8 copies lines from present to 5 lines after 8th line.
    :-3,. co 10 copies the lines from present cursor line above 3 lines after 10th line.

    "Block MOVING CMD"
    :1,5 mo 9 moves line from 1 to 5 after 9th line.
    :1,$ mo $ moves lines from 1 to $ after last line.
    :.,.+5 mo 10 moves line from present line ans next 5 lines after 10th line onwards.
    :.-3,. mo 10 moves present line and above 3 lines after 10th line.
    
wc / uniq - stdin / stdout / stderr - sort - grep - find / locate - sed / tr - zip/tar ...


## SSH setup passwordless

## How to Automate Tasks with cron Jobs