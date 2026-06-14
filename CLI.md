# Introduction to the command line interface (CLI)

## Objectives

* Explain the basics of CLI for different OS
* Introduce you to concepts and practice of CLI in Windows
* Convince you that CLI is better for some tasks
* Show that CLI is quicker for some tasks
* Show how AI you learn CLI tasks

My hope is that you will actively try to use CLI regularly for a small number of common tasks after leaving this workshop, and seek out additional information to expand your knowledge of the CLI.

## Warnings

Some opinions, but with justification

I am not an expert or "power user", just a CLI user mostly on Linux.

Some AI help

## Limitations

It is hard to change.
Microsoft Office is hard to escape.

## What is a shell?

A shell is a program that provides text-based access to a computer operating system.
Here are some visual examples.

Bash shell on Ubuntu Linux, using the `rg` (ripgrep) to search for a particular word ("enrich") in an R package repository.

PowerShell in Windows running some Git commands.

....

Shells provide access to various programs that are built into the shell or installed on top.
This includes simple interactive commands like `ls` for listing directory contents but also `Rscript` which will evaluate a script in R, doing whatever the script says.


## Shells among operating systems 

On Linux, the most popular shell is called *bash* (For Bourne Again SHell--search out the history if interested).
Alternatives exist but differences are not major.

macOS comes with a shell called *terminal*.
It was derived from Linux bash shell and most Linux commands work just as well on macOS

Windows is a bit more complicated.
The older shell was *Command Prompt* (inaccurately called *DOS* sometimes) but there are now multiple modern alternatives: *PowerShell*, Git Bash (which we will use), and WSL.
PowerShell is the real Windows shell, while Git Bash and WSL provide more or less access to Linux commands.
PowerShell is different from the other shells.
For advanced work in Windows, like task automation and ..., PowerShell is the obvious choice.
But for what we typicaly do--git operations, running scripts, ssh, simple built-ins, and handy programs--Git Bash is a good choice.
Why?

* it is simpler to learn than PowerShell, which actually provides an object-oriented pipeline, quite distinct from the text-based approach of other shells,
* it works very well with Git (it was written for this purpose) and is automatically installed when you install Git,
* and it uses the same Linux commands that most of the CLI world uses on Linux machines. 

## CLI vs. GUI

Most or at least some of the programs you directly work with have a graphical user interface (GUI).
Graphical programs provide another way to interact with the OS.
In some cases (Git Desktop, for example), GUIs actually invoke command-line tools.

## Git and GitHub via CLI

Let's practice the CLI with the `git-playground` repo.

## Authentication
First, authentication. 
If you have installed GitHub Desktop and are successfully using it with one or more AU-BCE-EE repos, you have authentication sorted out through the Git Credential Manager.
That uses HTTPS authentication.
If you see a browser window pop up asking for you to log into GitHub when you execute the commands below, go ahead and do it.
If the commands below do not work, we will sort it out.

## Cloning
Cloning means making a copy of a Git repo on your local machine.
You don't just get the current version of the files, but the entire ćommit history in a hidden `.git` subdirectory.
Authentication

fetch and pull

add and commit

push

restore
restore --staged
clean

log

checkout

merge

gh commands. . .



## Text files

Why do you need sophisticated formatting to write notes, an abstract, or even a paper?

Why use software with high overhead when a simpler approach works?

Use files that can be tracked.

Simple text editors

## Basic utilities

cd

ls

File search

File content search

command history

explorer.exe .

rm

Autocomplete

Changing environment variables

Automate tasks (crontab?)

system like htop?

## AI in Windows CLI


## Batch files?

Do they still make sense, still used?


## Run scripts

Why?
Why not?!
RStudio has massive overhead.
Use when needed, don't when not.

Rscript

python

PATH and other annoying Windows stuff

# Linux comparison


