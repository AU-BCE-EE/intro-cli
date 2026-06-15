# Introduction to the command line interface (CLI)

# Introduction to the introduction

The command line interface (CLI) may seem outdated if you are used to working with graphical user interfaces, but text-based commands and output are still the most efficient way to carry out many different types of computer tasks.
In this workshop you will get an introduction to CLI work in Windows.
The commands will be directly transferable to Linux and macOS.

## Objectives

Learning objectives are to:

* understand the basics of shells,
* be comfortable with basic CLI tasks in Git Bash in Windows, 
* effectively use git via the CLI, and
* learn more about CLI work after leaving this workshop.

My hope is that you will actively try to use CLI regularly for a small number of common tasks after leaving this workshop, and seek out additional information to expand your knowledge of the CLI.

## Warnings

There are a lot of different ways to carry out any particular task on a computer.
By joining this workshop, you have indicated that you have an interest in learning about a command line approach.
But there are many options for working in a CLI!
So I have had to make decisions about what we should do in this workshop and how we should do it.
I am not an expert or "power user", but just a regular CLI user (like most Linux users) with my own opinions.
I have tried to pick the most general and so userful approaches, but be aware that there are other ways to do the operations we will do here!

For my part, I recognize that it is hard to change established practice, and the GUI-based approach popular in our work circles (including Microsoft Office) is hard to escape.
It may be you try the CLI here and decide it is not a good fit.
No problem if so!
But do try to come in with an open mind, and consider that a little investment of effort now can save a lot of time and frustration later.

# What is a shell?

A shell is a program that provides text-based access to a computer operating system.
Here are some visual examples.

<img width="818" height="576" alt="bash1" src="https://github.com/user-attachments/assets/ef843a19-6fc1-4ea9-a42f-5aaa6c1e06b7" />

Bash shell on Ubuntu Linux, using the `rg` (ripgrep) to search for a particular word ("enrich") in an R package repository.

<img width="1474" height="1006" alt="image" src="https://github.com/user-attachments/assets/9f61a9f6-f316-4321-8fc0-9f86aaaf8448" />
PowerShell in Windows running some Git commands.


Shells provide access to various programs that are built into the shell or installed on top.
This includes simple interactive commands like `ls` for listing directory contents but also `Rscript` which will evaluate a script in R, doing whatever the script says.


# Shells and operating systems 

On Linux, the most popular shell is called *bash* (For **B**ourne **A**gain **Sh**ell--search the history if interested).
Alternatives exist but differences are not major.

macOS comes with a shell called *terminal*.
It was derived from Linux bash shell and most Linux commands work on macOS

Windows is a bit more complicated.
The older shell you may still see is called *Command Prompt* (incorrectly called *DOS* sometimes) but *PowerShell* is the modern Windows shell.
PowerShell is different from Bash and related shells.
It offers an object-oriented pipeline to pass information from one shell program to another, while Bash other shells use only text.
Commands in PowerShell are quite, well, powerful, but they have long names and are harder to learn than the more common Bash commands.

For advanced work in Windows, like task automation, PowerShell is the obvious choice.
But for what we typicaly do--git operations, running scripts, simple built-ins like `ls` and `mkdir` and `rm`, maybe `ssh`, and handy programs--Git Bash is a good choice and is what we will use here.
It is easier to learn than PowerShell, works very well with Git (it was written for this purpose), and uses the same Linux commands that make up the foundation of CLI work the world uses. 
However, most of what we will cover could be directly transferred to PowerShell.

# Getting started with Git Bash

## Opening Git Bash

Open up Git Bash.
You can use the same approach you use for other programs:

1. Hit the Windows key,
2. type (or start typing) `git bash`, and 
3. click on the correct program.

<img width="1188" height="382" alt="image" src="https://github.com/user-attachments/assets/2fdc9d9e-6011-4288-96c2-2be9afdf7ab7" />

## A keyboard shortcut to open Git Bash

Let's set up a keyboard shortcut so you can open your version of Bash the same way most of the world does.

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

## Basic commands and tab completion

The `cd` command is used to **c**hange **d**irectories.
Open up Git Bash, which I will just call Bash below, type 

```
cd Doc
```

and hit `Tab`.
Bash should extend `Doc` to `Documents` through what is called *tab completion*--a very helpful feature of shells.
If you have multiple directories that start with those three letters you will see a list of possibilities, which is a hint that you need to type more letters.
Tab completion is typically used in every command!

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

<img width="1095" height="534" alt="image" src="https://github.com/user-attachments/assets/7868440c-7edd-49ce-97cd-501c7a7aa40d" />

Do you also have the little tilde `~` after `MINGW64`?
If so, that means you are in your home directory.
If not, go there with

```
cd ~
```

On my keyboard I get the tilde with `Alt Gr` and the key to the left of `Enter` that has `^`, `¨`, and `~`.
(It is unfair that access to these important characters is much easier on American keyboards, but oh well.)

Now that we are all in our home directory, let's create a brand new directory for the GitHub repositories for this workshop, and potentially for your future work.
Enter this, which creates (**m**a**k**es) a **dir**ectory named `repos`:

```
mkdir repos
```

Then try to `cd` into the new subdirectory.
Remember tab completion!
Here is what I see:

<img width="1234" height="541" alt="image" src="https://github.com/user-attachments/assets/a4f212aa-b37b-4bc3-947a-6c2f53e31869" />

We want to be in this same directory for the next section, but for practice, close the shell with

```
exit
```

Then you can open it again and `cd` to the right directory before starting the next section.

# Git via CLI

Let's practice the CLI using the `git-playground` repo.
Open up Bash and `cd` to the `repos` directory.

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

1. Browse to the repo in an internet browser. 
   I find the easiest approach is to open a browser like Firefox or Brave, hit `Ctrl + L`, and start typing `github.com/AU` and use autocomplete and the `End` key to get to the right place, or at least the searchable list of repos. 
2. Click the green `Code` button and, if needed, select `HTTPS`, as shown below. Copy (to your clipboard) the `https...` bit.
3. Open Git Bash with `Ctrl + Alt + T`.
4. Use `cd` to get to the correct directory, `repos`.

Finally, time to clone!
Enter this command:

```
git clone https://github.com/AU-BCE-EE/git-playground.git
```

where that `https:...` is pasted in with `Shift + Ins`. 
This will download the repo contents and put them in a local directory with the name `git-playground`.
Here is what I see:

<img width="1129" height="539" alt="image" src="https://github.com/user-attachments/assets/24e05e34-6855-45cd-b781-14d7bdd6a9e9" />

Use `ls` to check that you have the new subdirectory.
Then open up Windows File Explorer to confirm that you really do have a directory with this name with the right contents!
Of *course* you do, but I want to help you link command line stuff with the more graphical approach you might be used to.

Now, you might automatically go to your track pad or mouse and start awkwardly, slowly, moving the arrow over to that tiny yellow square or wherever you click to open up File Explorer. . . 
Don't!
Try a CLI approach, please!
Back in Bash, type 

```
expl
```

and hit `Tab` to get

```
explorer
```

and then type a space and `.` to finally have this:

```
explorer .
```


and hit `Enter`. 
Ta-da!
You get File Explorer open in the correct directory.
The CLI is amazingly logical sometimes.

Here is what I see:

<img width="1120" height="478" alt="image" src="https://github.com/user-attachments/assets/46e521d0-ab58-4fe7-adbf-202750a80cf0" />

And when I double-click on `git-playground` I see the contents, just like any other directory you might eplore in Windows File Explorer.

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
That is what I typically do.
We will discuss some complications later (below).

# Editing, committing, and pushing

Now let me make a local change to a file in the repo.
Once that change is saved I should see it when I check the repo status with 

```
git status
```

This is what I see:

<img width="1096" height="512" alt="image" src="https://github.com/user-attachments/assets/6fe8b8f6-d006-4222-a023-ab75e468043c" />

Most important for me is the list of changed files--just one here.

If I am ready to commit this change, I can do that in two steps:`git add ...` and `git commit ...`.
The first "stages" the files and the second actually commits.



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


