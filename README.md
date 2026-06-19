# Introduction to the command line interface (CLI)

# Author and maintainer
Sasha D. Hafner (https://au.dk/sasha.hafner@bce.au.dk).

# Introduction to the introduction

The command line interface (CLI) may seem outdated if you are used to working with graphical user interfaces, but text-based commands and output are still the most efficient way to carry out many types of computer tasks.
What kind of tasks?
Here are some of the ones you will do in the final exercise:

* Find files based on name or contents
* Navigate among directories
* List all the files in a directory
* Create and delete files and directories
* Open text files within the shell 
* Open any file with the default program
* Open Windows File Explorer 
* Run R and Python scripts
* Use R and Python interactively
* Clone a git repo
* Carry out all Git operations, like pulling and pushing, committing, comparing versions

This document was written as a guide for a hands-on workshop on the CLI planned for June 2026 in Aarhus.
But it could serve as a stand-alone introduction as well.
The focus is CLI work in Windows.
But, the commands will be directly transferable to Linux and macOS.

## Approach and organization

This will be an informal, trial-and-error-based, demonstration and type-along workshop.
Try to do everything that I do!

About organization. . . there isn't much here.
I could argue that the content follows the reality of CLI work, where a mix of commands are used together within one task.
In truth, that is part of the reason organization is lacking here.
The other part is that I didn't want to invest too many hours in a one hour workshop!

## Objectives

Some learning objectives for this short workshop are to:

* understand the basics of **shells**,
* be comfortable with basic CLI tasks in **Git Bash** in Windows, 
* effectively use **git** via the CLI, and
* learn more about CLI work after leaving this workshop.

My hope is that you will actively try to use CLI regularly for a small number of common tasks after leaving this workshop, and seek out additional information to expand your knowledge of the CLI.

## Perspectives

There are a lot of different ways to carry out any particular task on a computer.
By joining this workshop, you have indicated that you have an interest in learning about a command line approach.
But there are many options for working in a CLI!
So I have had to make decisions about what we should do in this workshop and how we should do it.
I am definitely not an expert or "power user", but just a regular CLI user (like most Linux users) with my own opinions.
I have tried to pick the most general and so useful approaches, but be aware that there are other ways to do the operations we will do here!

For my part, I recognize that it is hard to change established practice, and the GUI-based approach popular in our work circles (including Microsoft Office) is hard to escape.
It may be you try the CLI here and decide it is not a good fit.
No problem if so!
But do try to come in with an open mind, and consider that a little investment of effort now can save a lot of time and frustration later.

I have used an AI tool (Claude Code) to get some advice for this workshop and document, including a discussion on which shell to focus on, but the content is mine and for better or worse I actually wrote this document. 
I expect Claude Code to take a look when I am done to correct inaccurate language and point out other mistakes or omissions.

Now, for some actual CLI content!

# What is a shell?

A shell is a program that provides text-based access to a computer operating system.
Here are some visual examples.

<img width="818" height="576" alt="bash1" src="https://github.com/user-attachments/assets/ef843a19-6fc1-4ea9-a42f-5aaa6c1e06b7" />

*The Bash shell running in Ubuntu Linux, using `rg` (ripgrep) to search for a particular word ("enrich") in an R package repository.*

<img width="1474" height="1006" alt="image" src="https://github.com/user-attachments/assets/9f61a9f6-f316-4321-8fc0-9f86aaaf8448" />
*PowerShell, the modern Windows shell, running some Git commands.*

Shells provide access to various programs that are built into the shell or installed on top.
This includes simple interactive commands like `ls` for listing directory contents but also `Rscript` which will evaluate a script in R, doing whatever the script says.
We don't really need to be concerned with which commands call "builtins" and which call installed programs.

# Shells and operating systems 

On Linux, the most popular shell is called *Bash* (For **B**ourne **A**gain **Sh**ell--search the history if interested).
Alternatives exist but differences are not major.

macOS comes with a shell called *zsh* or, prior to 2019, Bash.
The newer zsh, like Bash, came from a Unix precursor, and most Linux Bash commands work on macOS.

Windows is a bit more complicated.
The older shell you may still see is called *Command Prompt* (incorrectly called *DOS* sometimes but called correctly *cmd* as well) but *PowerShell* is the modern Windows shell.
PowerShell is different from Bash, zsh, and related shells.
It offers an object-oriented pipeline to pass information from one shell program to another, while Bash and other shells use only text.
Commands in PowerShell are quite, well, powerful, but they have long names and are harder to learn than the more common Bash commands.

For advanced work in Windows, like task automation, PowerShell is the obvious choice.
But for what we typically do--git operations, running scripts, simple built-ins like `ls` and `mkdir` and `rm`, maybe `ssh`, and handy programs--Git Bash is a good choice and is what we will use here.
It is easier to learn than PowerShell, works very well with Git (it was written for this purpose), and uses the same Linux commands that make up the foundation of CLI work the world uses. 
However, most of what we will cover can be directly transferred to PowerShell.
Where there are differences, PowerShell will automatically recognize Bash commands like `ls` but does not include all the options available in Bash.
In other cases where commands are slightly different, PowerShell will automatically convert commands to the PowerShell version in realtime--pretty impressive!
Although we are focusing on Git Bash, you should try out PowerShell at some point today.

# Getting started with Git Bash

Open Git Bash using the same approach you use for other programs:

1. Hit the Windows key,
2. type (or start typing) `git bash`, and 
3. click on the correct program.

You should see something like this:

<img width="1188" height="382" alt="image" src="https://github.com/user-attachments/assets/2fdc9d9e-6011-4288-96c2-2be9afdf7ab7" />

Let's set up a keyboard shortcut so you can open your version of Bash the same way most of the world does, by pressing `Ctrl + Alt + T`!
Then you will start to feel like a power user.

1. Request admin privileges with Heimdal Agent,
2. hit the Windows key,
3. type (or start typing) `git bash`,  
4. **right-click** on the correct program and select "Open file location",
5. right-click on the `Git Bash` shortcut that shows up in the folder that opens and select `Properties`,
6. go to `Shortcut`,
7. click in `Shortcut key` box and press `Ctrl`, `Alt`, and `t` together, and ensure that combination shows up in the input box, and
8. click OK.

Now you should be able to press that combination `Ctrl + Alt + T` to open Git Bash.
Here is what it should look like after opening:

<img width="1075" height="505" alt="image" src="https://github.com/user-attachments/assets/a6adaccd-a2ba-41b3-95c9-7348bf599a4d" />

For some reason, with that approach my version opens in my home directory, indicated by the tilde `~`.
Does yours?

The `cd` command is used to **c**hange **d**irectories.
Open up Git Bash, which I will just call Bash below, type 

```
cd Doc
```

and hit `Tab`.
Bash should extend `Doc` to `Documents` through what is called *tab completion*--a very helpful feature of shells.
If you have multiple directories that start with those three letters you will see a list of possibilities, which is a hint that you need to type more letters.
Tab completion is typically used in most commands!
Get used to it--it makes CLI life much much easier, and is an advantage over graphical user interfaces (GUIs).

Go ahead and change the directory to `Documents`.

```
cd Documents
```

There are some important issues to understand with autocomplete and spaces in directory names.
Try to `cd` into a directory with spaces in the name to see why shell users dislike spaces in directory or file names.
You have two options: quoting or an "escape" character.

```
cd "One Drive"
cd One\ Drive
```

Get out of there once you are in.

You should see the current directory listed in Bash before the prompt, but it can be a bit confusing to sort out.
Instead, you might find it helpful to print it with `pwd`.

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ pwd
/c/Users/au594831/repos/intro-cli
```

Finally, close Bash with `exit`.

```
exit
```

You might be tempted to reach for your track pad or mouse and click on that little `x`, but typing `exit` is faster!

# More Bash commands

Now you know how to open a Bash shell and navigate to a particular location.
Let's learn some more handy Bash commands.
Open Bash up again, and `cd` to `Documents` or a directory of your choice.


Now list all the files and directories present with the `ls` command for **l**i**s**t:

```
ls
```

For more details, use 

```
ls -l
```

where the `-l` flag is for **l**ong.

For more options, see the help details with the ubiquitous `-h` or `--help` flag for **h**elp.
Pick one of the flags and try it.
Good choices are `-R` and `-lh`.
But to be honest, it is difficult to figure out how to use these commands from the help pages.
AI tools are much easier.

To list only a particular type of file, you can use *shell expansion* or *globbing*, e.g., for `xlsx` files, use this.

```
ls *.xlsx
```

The `*.xlsx` is called a "glob" because it has the `*` wildcard character in it.
Because it is unquoted here it undergoes the globbing, meaning Bash will replace the `*` with all matches that are present before passing the result on to the `ls` command.
If you quote it, globbing does not happen, and the literal text `*.xlsx` is passed to the receiving program.
That won't work here (it is not what we intend anyway) but it is the right approach in cases where you want the receiving program to do the pattern matching.
We will see that in `find` for example.

For searching for files, the `find` command is much more powerful than `ls`.
For example, this will find all `xlsx` files, searching recursively.

```
find . -name '*.xlsx'
```

Notice the quotes?
There are differences between single and double quotes in Bash, but not for any of the commands in this workshop.

Use the `-iname` flag for a case-insensitive search.
Try `find`, tweaking the command to fit your files.

Then get back to the starting point with

```
cd ..
```

The `..` means "go up one level".
You may have already seen it in relative file paths in R or Python scripts.
Same idea!
Isn't text-based stuff great?

Here is what some of that looked like for me:

<img width="1095" height="534" alt="image" src="https://github.com/user-attachments/assets/7868440c-7edd-49ce-97cd-501c7a7aa40d" />

Do you also have the little tilde `~` after `MINGW64`?
If so, that means you are in your home directory.
You can always check with `pwd`.

```
UNI+au594831@PW0E5F78 MINGW64 ~
$ pwd
/c/Users/au594831
```

If not, go there with

```
cd ~
```

The tilde is another shortcut that can be used in multiple applications to mean your home directory.
On my Danish keyboard I get the tilde with `Alt Gr` and the key to the left of `Enter` that has `^`, `¨`, and `~`.
On my American keyboards I get it with `Shift` and the top left key that has a backtick quote and `~`, which is super easy. 
Apparently the decision to use these odd characters was done by people using American or similar keyboards.

Now that we are all in our home directory, let's create a brand new directory for the GitHub repositories for this workshop, and potentially for your future work.
Enter this, which creates (**m**a**k**es) a **dir**ectory named `repos`:

```
mkdir repos
```

(In the past I'd used `GitHub-repos` or similar, but since GitHub is the only service I use for remote repos, Claude pointed out that this was kind of stupid.)
Of course you can also just change the name of an existing directory.

Then try to `cd` into the new subdirectory.
Remember tab completion!
Here is what I see:

<img width="1234" height="541" alt="image" src="https://github.com/user-attachments/assets/a4f212aa-b37b-4bc3-947a-6c2f53e31869" />

We want to be in this same directory for the next section, but for practice, close the shell with

```
exit
```

You can find a table with these Bash commands in [bash_commands.md](https://github.com/AU-BCE-EE/intro-cli/blob/main/bash_commands.md).

# History 

A handy feature of Bash (and presumably most shells) is command history.
To bring up a previous command, just hit the up arrow.
Try it now.
To look up a previous command hit `Ctrl + R` and start typing what you remember.
This reverse incremental search is similar to tab completion.
Hit `Ctrl + R` again to search further back in history.
These two features alone make CLI work so much easier than it would otherwise be.
Be sure to use them in the remainder of the workshop!

# Git via CLI

Let's practice the CLI using the `git-playground` repo.
You can find a summary of Git commands in the [git_commands.md](https://github.com/AU-BCE-EE/intro-cli/blob/main/git_commands.md) file.
Open up Bash (use your shortcut!) and `cd` to the `repos` directory.

## Authentication
To push to repos and clone or pull private repos, you need to authenticate.
If you have installed GitHub Desktop and are successfully using it with one or more AU-BCE-EE repos, you have authentication sorted out through the Git Credential Manager.
That uses what is called HTTPS authentication (don't ask me to explain).
If you see a browser window pop up asking for you to log into GitHub when you execute the commands below, go ahead and do it.
If the commands below do not work, we will sort it out!
If you happen to be using Linux, SSH authentication is a better option.

## Cloning
Cloning means making a copy of a Git repo on your local machine.
You don't just get the current version of the files, but the entire commit history in a (hidden, at least on Linux and probably macOS) `.git` subdirectory.

Let's clone the repo.

1. Browse to the repo in an **internet browser**. 
   I find the easiest approach is to open a browser like Firefox or Brave, hit `Ctrl + L`, and start typing `github.com/AU` and use autocomplete and the `End` key to get to the right place, or at least the searchable list of repos. 
2. Click the green `Code` button and, if needed, select `HTTPS`, as shown below. Copy (to your clipboard) the `https...` bit.
3. Open Git Bash with `Ctrl + Alt + T`.
4. Use `cd` to get to the correct directory, `repos`.

Finally, time to clone.
Enter this command:

```
git clone https://github.com/AU-BCE-EE/git-playground.git
```

where that `https:...` is pasted in with `Shift + Ins`. 
(Of course, you could just copy it from here, but the point is to learn how to clone an arbitrary repo from GitHub.)
This will download the repo contents and put them in a local directory with the name `git-playground`, which is taken from the GitHub repo name.
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
You get File Explorer open in the correct directory.
You may have to do this a few times before it is quick, but I would be very surprised if the mouse is faster.

Here is what I see:

<img width="1120" height="478" alt="image" src="https://github.com/user-attachments/assets/46e521d0-ab58-4fe7-adbf-202750a80cf0" />

And when I double-click on `git-playground` I see the contents, just like any other directory you might explore in Windows File Explorer.

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

At this point, you can check the current status of things with `git status`.
This is actually a very handy command.

```
sasha@sasha-thinkpad-T470s:~/GitHub_repos/git-playground$ git status
On branch main
Your branch is behind 'origin/main' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)

nothing to commit, working tree clean
```

So you can see that your local files are behind the latest version of the repo.
And the hint to `pull` is a good one.
You should have nothing to commit (`git status` would tell you), so there is no chance of a conflict, so go ahead and pull.

```
sasha@sasha-thinkpad-T470s:~/GitHub_repos/git-playground$ git pull
Updating 7a9e08a..6b192b9
Fast-forward
 README.md | 3 +++
 1 file changed, 3 insertions(+)
```

In fact, you can generally just `pull` directly.
What it actually does is a `fetch` followed by a `merge`.
See the `git_commands.md` file for a summary.
We will discuss some complications later (below).

# Editing, committing, and pushing

Now let me make a local change to a file in the repo.
Once that change is saved we (I) should see it when I check the repo status with 

```
git status
```

This is what I see:

<img width="1096" height="512" alt="image" src="https://github.com/user-attachments/assets/6fe8b8f6-d006-4222-a023-ab75e468043c" />

Most important for me is the list of changed files--just one here.

Git provides a handy way to see specific changes with `git diff ...`.
With this, you can see changes in all changed files, but you can do the same kind of partial or complete file name matching used with other Git commands.

```
git diff .
```

Here is what `git diff . . .` can show.

<img width="1145" height="734" alt="image" src="https://github.com/user-attachments/assets/daced883-5893-42c7-a5d6-21184fdcc8d5" />

If I am ready to commit this change, I can do that in two steps: `git add ...` and `git commit ...`.
The first "stages" the files and the second actually commits.

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/git-playground (main)
$ git add README.md
```

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/git-playground (main)
$ git commit -m 'Add a bit to README.md'
[main 15ad5ef] Add a bit to README.md
 1 file changed, 2 insertions(+)
```

The `-m` option means a commit message will go on the same line, like above, or at least part of the same command.
For a detailed commit message, add a blank line between the summary and the body, like this.

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ git commit -m 'short summary here
>
>
> more details here
> maybe across multiple
> lines'
```

The `>` character is the Bash continuation character; it means you are still inside a command.

Now, let's say instead of editing a file I create a new one.
For example, I just created a short R script called `none.R`.
We can confirm that it exists and is not staged with `git status`.

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/git-playground (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        none.R

nothing added to commit but untracked files present (use "git add" to track)
``` 

To add it, and only it, I can use this:

```
git add none.R
```

The `git add` command can be used to add a specific file or can use metacharacters to match multiple files.
To add everything that has been edited, added, or deleted, use `git add .`.


```
git add .
```

And I check with `git status`:

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/git-playground (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   none.R
```

And finally, when I am ready, commit with `git commit -m ...`.

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/git-playground (main)
$ git commit -m 'add script none.R'
[main 2a14927] add script none.R
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 none.R
```

Let's make sure it did what we wanted, with `git status` of course!

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/git-playground (main)
$ git status
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
```

As the hint suggests, we probably want to `push` this commit now.
When collaborating, there is no good reason to delay pushing!


```
$ git push
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 16 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 280 bytes | 280.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/AU-BCE-EE/git-playground.git
   51ea466..2a14927  main -> main
```

Another very common Git command is `git log`.
With that you can see commit messages, who did the commit, and the commit hash, which can be used to find that exact version of files locally.
Run this in the `intro-cli` repo to see my work.

```
git log 
```

The easiest way to find details on each commit is through the GitHub interface online.

We will come back to some more advanced Git commands later.
For now, let's take a look at text files.

# Text files and Bash file operations

Why do you need sophisticated formatting to write notes, an abstract, or even a paper?
Why use software with high overhead when a simpler approach works?
Have you ever had a problem with a csv file that you could not understand because of the automatic (and hidden) conversion done by Excel? 
Were you ever clueless about what changes were made in a `docx` or `xlsx` file even if you used Git or saved multiple versions?
These are all reasons to use text files!

Text files are great because they can be tracked easily with git.
They are also lightweight, and the "text editors" (software programs that can be used to view and edit them) can also be very lightweight. 

Notepad is not terrible but Git Bash comes with a lightweight text editor called Nano that you can access right from the CLI.
Give it a try.
`cd` your way into `repos/git-playground` and create a new file with your name like this

```
nano sasha.md
```

The drawbacks?
Keyboard shortcuts are different from Windows (and non-Windows!) programs.
And copy/paste is tricky.

In my opinion Micro is a much easier alternative.
But it is not bundled with Git Bash, so you need to install it with:

```
winget install zyedidia.micro
```

And to use it:

```
micro sasha.md
```

Now add some content.
You can get information on Markdown from [this handy guidance document](https://github.com/AU-BCE-EE/guidance-GitHub/blob/main/markdown.md).
Here is what I've done:

<img width="1240" height="597" alt="image" src="https://github.com/user-attachments/assets/f9a51332-0a6d-48f7-89e8-c2019cb202f1" />

Close Micro with `Ctrl + Q` and let's learn some new Bash commands.
To copy a file, use `cp`.
So make a copy with a `2` added on the end of the name.

```
cp sasha.md sasha2.md
```

Make sure it is there!

```
ls
```

The `mv` command moves files.
Here we'll move the new one up one level into `repos`.

```
mv sasha2.md ../.
```

or

```
mv sasha2.md ../sasha2.md
```

or

```
mv sasha2.md ~/repos/sasha2.md
```

Let's go into `repos` and check.

```
cd ..
ls
```

Are you in the right directory?

```
pwd
```

If you are lost, use an absolute path.

```
cd ~/repos
```

To delete a file, use `rm`.

```
rm sasha2.md
```

To delete a directory, you need the `-r` flag.

```
rm -r dead_dir
```

Let's stop messing around with new files for now.
Back to Git.
Go ahead and `add` and `commit`.
Don't `push` yet--because we have multiple changes going on at once this is one of those somewhat rare cases of simultaneous work where we will get some conflicts.
Let's have just one of us commit and push first.

Then after our individual commits, we can try this command, which will sort out the merge problem.

```
git pull --rebase
```

Here is an example.

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ git push
To https://github.com/AU-BCE-EE/intro-cli.git
 ! [rejected]        main -> main (fetch first)
error: failed to push some refs to 'https://github.com/AU-BCE-EE/intro-cli.git'
hint: Updates were rejected because the remote contains work that you do not
hint: have locally. This is usually caused by another repository pushing to
hint: the same ref. If you want to integrate the remote changes, use
hint: 'git pull' before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ git pull --rebase
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 1.01 KiB | 31.00 KiB/s, done.
From https://github.com/AU-BCE-EE/intro-cli
   629f285..c20ebbb  main       -> origin/main
Successfully rebased and updated refs/heads/main.

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 16 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 308 bytes | 308.00 KiB/s, done.
Total 3 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 2 local objects.
To https://github.com/AU-BCE-EE/intro-cli.git
   c20ebbb..56ec102  main -> main
```

And here is an example in a case where there were multiple changes (commits) in the same file.

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ git pull
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 943 bytes | 32.00 KiB/s, done.
From https://github.com/AU-BCE-EE/intro-cli
   5fa8b13..8512a4d  main       -> origin/main
Auto-merging x
CONFLICT (content): Merge conflict in x
Automatic merge failed; fix conflicts and then commit the result.

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main|MERGING)
$ micro x

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main|MERGING)
$ git status
On branch main
Your branch and 'origin/main' have diverged,
and have 1 and 1 different commits each, respectively.
  (use "git pull" if you want to integrate the remote branch with yours)

You have unmerged paths.
  (fix conflicts and run "git commit")
  (use "git merge --abort" to abort the merge)

Unmerged paths:
  (use "git add <file>..." to mark resolution)
        both modified:   x

no changes added to commit (use "git add" and/or "git commit -a")

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main|MERGING)
$ git add .

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main|MERGING)
$ git commit -m 'fix merge issue in x'
[main 7d68341] fix merge issue in x

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ git push
Enumerating objects: 10, done.
Counting objects: 100% (10/10), done.
Delta compression using up to 16 threads
Compressing objects: 100% (4/4), done.
Writing objects: 100% (6/6), 551 bytes | 183.00 KiB/s, done.
Total 6 (delta 2), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (2/2), completed with 1 local object.
To https://github.com/AU-BCE-EE/intro-cli.git
   8512a4d..7d68341  main -> main
```

To abandon edits of a particular file, use `git restore ...`.
Be careful!
Regardless of what you may have done in e.g., a text editor (saved a file 100 times) `git restore` will revert back to the latest commit.

```
git restore README.md 
```

The `.` will abandon all new edits.

```
git restore .
```

And to abandon new files, use `git clean -i ...`.

Sometimes you just want to "unstage" a file.
Use this command for that.

```
git restore --staged that_file.txt
```

Be careful!
Leave out the `--staged` flag and you will lose your edits!
Afterwards, make sure with this.

```
git status
```

What do you expect to see now?

Git does a whole lot more than we've seen here.
Let's look at just one more handy command.

```
git checkout <commit hash>
```

This will change the local version of your files to the commit indicated by the hash.
Be sure to go back to the current version with this afterwards.

```
git checkout main
```

or

```
git checkout master
```

depending on the name of your main branch.

# Searching within files


An advantage of working with text files is you can easily search inside them.
And Ripgrep is an excellent modern command line tool for doing just that.
You can install it by running this command in Bash:

```
winget install BurntSushi.ripgrep.MSVC
```

If it works, it uses yet another command line tool, winget, to download and install the program.

If it does not work, try this!

1. Download the ripgrep-X.X.X-x86_64-pc-windows-msvc.zip from ripgrep's GitHub releases
2. In Git Bash: mkdir -p ~/bin then extract rg.exe into ~/bin
3. Add export PATH="$HOME/bin:$PATH" to ~/.bashrc
4. Restart Git Bash, confirm with rg --version

Either way, you will need to close and reopen Bash to use Ripgrep.
When you open it up, browse to the `intro-cli` repo directory and search for some particular text there using the `rg` command.
Here is an example.

<img width="1126" height="574" alt="image" src="https://github.com/user-attachments/assets/c594e722-5b55-4f26-982c-d32472b48e32" />

Pretty neat, isn't it?
Picture using it to search every one of your repos to find where you used some particular function.
The `rg` command comes with a whole lot of options.
To see them, use the `--help` option.
But for better or worse, AI is the easiest way to figure out these types of commands.

# R and Python

It is easy to run an R or Python script in a CLI.
Why run a Python or R script using the CLI when you have a fancy integrated development environment (IDE) like RStudio?
For simplicity and speed.
IDEs can have a lot of overhead--take a look at how long it takes RStudio or VS Code to open up, for example.
Maybe it does not always make sense, but it will sometimes.

Furthermore, sometimes you just need to run some throw-away code.
For that the easiest approach is to run R or Python directly in Bash.

Take a look at the tiny R script `scripts/make_plot.R`.
Do it all using Bash and Micro!
You can run that with the `Rscript` command.

```
cd scripts
Rscript make_plot.R
```

Use `ls` to see if any files were created.

You should see a new image file `plot.png`, and you would typically want to open it to check the plot.
How could you do that?
You might first open File Explorer through Bash and then double-click the file icon.
That works, but you can also do this with any type of file:

```
start plot.png
```

To use R interactively, e.g., to quickly review how a function works or to run a quick demo, just use the `R` command.

```
R
```

And you get an interactive R console.
If you don't, you probably have a PATH variable problem.
To fix it, you need to add the path of the R executable to the user PATH environment variable. 
I can help!

```
UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)
$ R


Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> rnorm(100)
  [1]  0.25334611  0.02167572 -1.28615045  1.40557098  0.47263213 -0.25698101
  [7]  0.21723387  0.17985242 -0.40445806 -0.70859933  0.90039993  0.28215297
 [13] -0.23601972 -0.05814558 -2.03216295 -0.36225475  0.57600980 -0.06828380
 [19] -0.86341833 -1.64173279  0.29208735  1.49082768 -0.99974765 -0.75378877
 [25]  0.30640209  0.48457493 -0.81104261  0.33178440 -0.77233539  1.45220801
 . . .
 [97] -1.22865839  0.36316999  0.37929286  0.18193419
> q()
Save workspace image? [y/n/c]: n

UNI+au594831@PW0E5F78 MINGW64 ~/repos/intro-cli (main)

```

Python behaves similarly. 
Try this.

```
cd scripts
micro demo.py
ls
python demo.py
```

By the way, are you using tab completion?
You should be!

Interactive use is not quite as straightforward.
For some reason related to how Windows handles Python (or vice versa), you will probably need to precede the `python` command with `winpty`.
This will launch Python interactively.

```
winpty python
```

Here is what I see:

<img width="1166" height="574" alt="image" src="https://github.com/user-attachments/assets/4ba0e297-9838-44c9-9159-655898fd890f" />

# AI help
I don't have time to expand this topic but perhaps it does not need to be anything more than a short note.
AI tools like Claude Code and ChatGPT are very good at providing guidance on Bash.
Try it out by asking about a task you now know how to do, or some variant you do not know about.

# Shell scripts
Shell scripts are analogous to R or Python scripts, but they have code for a shell language--here Bash.
So the commands we used above can be put in a text file and for all kinds of tasks, or a high-level combination of tasks. 
Creating shell scripts that do exactly what you want is something AI tools are good at.
Let me search my local repos for some example shell scripts.

```
find . -name '*.sh'
```

# Sending output to file

This is a simple and useful operation.
Whenever you want to save the console output from a command, you can send it to a file with `>`, e.g., 

```
find . -name *.sh > sh_search.txt
```

# Exercises

Do the following in Git Bash.

1. Clone this repo: <https://github.com/AU-BCE-EE/Hafner-2023-bls-wt-comp>.
2. Find a csv file, using an appropriate command.
3. Navigate into the directory containing that csv file, using an appropriate command.
4. Confirm the path of the directory.
5. List all the files in the directory.
6. Open the file in Micro and check the delimiter. Close the file.
7. Open the file using your default program for csv files (open from Bash). What is the program? Close the program.
8. Open Windows File Explorer in that directory.
9. Go back to the repo root in Bash.
10. Use an appropriate command to find all the locations of the text `library` in the repo files. Which files have that text? Which packages are required to run this analysis? Can you save this list in a file without copy/paste?
11. Close the shell.

Now you will actually run an analysis in R:

1. Clone <https://github.com/AU-BCE-EE/demo-R1>.
2. See if there is a file named `main.R` somewhere.
3. See if `library` is present in any of the R scripts.
4. Check the name of the file(s) in the `plots` subdirectory using the appropriate Bash command.
5. Find the script that creates that file in `plots`. Open the script and change the name used for the png plot file.
6. Delete the original plot png file.
7. Run `scripts/main.R` in R in batch mode.

And then some Git work:

1. Working with that same `demo-R1` repo, use Git to see what changed. 
2. See exactly what changed in the R script. Does it match what you expect?
3. Stage and commit just the R script. Give it an appropriate commit message.
4. Stage all remaining changes.
5. Unstage and undo all changes.
6. Try to push your commit. Does it work?

Finally, work with a repo where you have write permission:

1. Create a new subdirectory with a unique name for an R or Python script, e.g., `analysis-sasha` or `scripts-sasha`.
2. Use micro or nano to create a simple R or Python script that either writes some values to an output file or prints some values to the console.
3. Run the script.
4. Stage, commit, and push your work.
5. Did you have any problems? If so, sort them out and try pushing again.
6. Delete the subdirectory you created
7. Assume you changed your mind and want to keep the subdirectory, so with Git, restore it

