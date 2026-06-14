# Introduction to the command line interface (CLI)

# Background
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

# What is a shell?

A shell is a program that provides text-based access to a computer operating system.
Here are some visual examples.

Bash shell on Ubuntu Linux, using the `rg` (ripgrep) to search for a particular word ("enrich") in an R package repository.

PowerShell in Windows running some Git commands.

....

Shells provide access to various programs that are built into the shell or installed on top.
This includes simple interactive commands like `ls` for listing directory contents but also `Rscript` which will evaluate a script in R, doing whatever the script says.


# Shells among operating systems 

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
* and it uses the same Linux commands that make up the foundation of CLI work the world uses. 

Most or at least some of the programs you directly work with have a graphical user interface (GUI).
Graphical programs provide another way to interact with the OS.
In some cases (Git Desktop, for example), GUIs actually invoke command-line tools.

# Getting started with Git Bash

## Opening bash

Open up Git Bash.
You can use the same approach you use for other programs:

1. Hit the Windows key,
2. type (or start typing) `git bash`, and 
3. click on the correct program.

<img width="1188" height="382" alt="image" src="https://github.com/user-attachments/assets/2fdc9d9e-6011-4288-96c2-2be9afdf7ab7" />

But, one of the first things we'll do is set up a keyboard shortcut so you can open your version of Bash the same way most of the world does.

1. Request admin privileges with Heimdal Agent,
2. hit the Windows key,
3. type (or start typing) `git bash`,  
4. **right-click** on the correct program and select "Open file location",
5. right-click on the `Git Bash` shortcut that shows up in the folder that opens and select `Properties`,
6. go to `Shortcut`,
7. click in `Shortcut key` box and press `Ctrl`, `Alt`, and `t` together, and ensure that combination shows up in the input box, and
8. click OK.

Now you should be able to press that combination `Ctrl + Alt + T` to open Git Bash!
Here it what it should look like after opening:

<img width="1075" height="505" alt="image" src="https://github.com/user-attachments/assets/a6adaccd-a2ba-41b3-95c9-7348bf599a4d" />

# Baby steps: autocompletion, `cd`, `ls`, and `mkdir`

The `cd` command is used to *c*hange *d*irectories.
Type 
```
cd Doc
```

and hit `Tab`.
Bash should extend `Doc` to `Documents` through what is called *autocompletion*--a super convenient feature of shells.
If you have multiple directories that start with those three letters you will see a list of possibilities, which is a hint that you need to type more letters.
Autocomplete is typically used in every command!

Go ahead and change the directory to `Documents`.
Now list all the files and directories present with the command for list:

```
ls
```

Then get back to the starting point with

```
cd ..
```

The `..` means "go up one level".
You may have already seen it in relative file paths in R or Python scripts.

Here is what all that looked like for me:

<img width="1527" height="576" alt="image" src="https://github.com/user-attachments/assets/1938d44d-caac-498e-9b3d-d3121808607e" />

Do you see a list of suggested directories that start with `Do`?


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

Let's clone the repo!

1. Browse to the repo. 
   I find the easiest approach is to open a browser like Firefox or Brave, hit `Ctrl + L`, and start typing `github.com/AU` and use autocomplete and the `End` key to get to the right place, or at least the searchable list of repos. 
2. Click the green `Code` button and, if needed, select `HTTPS`, as shown below. Copy (to your clipboard) the `https...` bit.
3. Open Git Bash!
4. Use `cd` to get to the correct directory, that is, the directory where you keep your local GitHub repos. You don't actually *have* to keep them all in the same location, but you should have an idea of where they are. If you have no idea, go through GitHub Desktop to find out.

Now we are ready for some Git commands.
I'll start a new list for them.

Finally, time to clone!
Enter this command:

```
git clone https://github.com/AU-BCE-EE/git-playground.git
```

where that `https:...` is pasted in with `Ctrl + Shift + v`. 
This will download the repo contents and put them in a local directory with the name `git-playground`.

## Fetching and pulling

Now sit tight while I make some changes to the repo. . .

OK, now it is time to practice fetching and pulling.

First, fetch, with this:

```
git fetch
```

In your terminal, it might look like this:

```
sasha@sasha-thinkpad-T470s:~/GitHub_repos/git-playground$ git fetch
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 1015 bytes | 338.00 KiB/s, done.
From github.com:AU-BCE-EE/git-playground
   7a9e08a..6b192b9  main       -> origin/main
```

`git fetch` downloads git history but does not actually update your local copy of the files.

At this point, you check the current status of things with `git status`.
This is actually a very handy command.

```
sasha@sasha-thinkpad-T470s:~/GitHub_repos/git-playground$ git status
On branch main
Your branch is behind 'origin/main' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)

nothing to commit, working tree clean
```

So you can see that your local branch is behind the latest version of the repo.
And the hint to `pull` is a good one.
You should have nothing to commit, so there is no chance of a conflict, so go ahead and pull.

```
sasha@sasha-thinkpad-T470s:~/GitHub_repos/git-playground$ git pull
Updating 7a9e08a..6b192b9
Fast-forward
 README.md | 3 +++
 1 file changed, 3 insertions(+)
```

In fact, you can generally just `pull` directly.









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


