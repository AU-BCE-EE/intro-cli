# Preparation for the CLI workshop - checking Git Bash

If you have installed [GitHub Desktop](https://desktop.github.com/download/) then you have a command line program called Git Bash as well.
Here you will make sure it is accessible so we can all hit the ground running when we meet.

If you have not installed GitHub Desktop, please do that first using this link: https://desktop.github.com/download/.

# Open Git Bash

Open up Git Bash.
You can use the same approach you use for other programs, for example:

1. Hit the Windows key,
2. type (or start typing) `git bash`, and 
3. click on the correct program.

<img width="1188" height="382" alt="image" src="https://github.com/user-attachments/assets/2fdc9d9e-6011-4288-96c2-2be9afdf7ab7" />

You should see Git Bash open up like this:

<img width="1075" height="505" alt="image" src="https://github.com/user-attachments/assets/a6adaccd-a2ba-41b3-95c9-7348bf599a4d" />


# Check GitHub authentication

Enter these two commands in Git Bash to create a new directory `repos`

```
cd ~
mkdir repos
```

The `cd` command is used to *c*hange *d*irectories.
And `mkdir` *m*a*k*es *dir*ectories.

You can copy and paste the code if you prefer (that might be the easiest way to get a tilde `~`).
To paste into Git Bash press `Shift + Ins`.

Now see if you can clone a repo from GitHub by entering these commands.


```
cd repos
git clone https://github.com/AU-BCE-EE/git-playground.git
```

If you have not already authenticated, you should be prompted to log into github.com via your default browser.
Once authenticated, you should see something like this:

<img width="1129" height="539" alt="image" src="https://github.com/user-attachments/assets/24e05e34-6855-45cd-b781-14d7bdd6a9e9" />

# That's it!

If you were able to carry out those steps without any problems, you are all set.
If there were problems in any step, please let me know by [email](mailto:sasha.hafner@bce.au.dk).
