# Git commands

# Cloning

`git clone https://github.com/AU-BCE-EE/intro-cli.git`


# Typical workflow 

1. `git status` to check for new local work (address if present with `git add ...` and `git commit -m ...` or `git restore ...` 
2. `git pull` to download and merge in remote (GitHub) work (if merge conflict, see Merge conflict section below)
3. Edit files (text editor, RStudio, VS Code, run scripts, etc.)
4. `git status` (recommended) to see what you've done and think about how to proceed
5. `git diff ...` (optional) to check for exact changes in one or more files
6. `git add .` to stage all changes or else be more specific than `.`, e.g., `git add scripts/.`, `git add *.txt`, etc.
7. `git commit -m 'commit message...'` to commit
8. `git push` to update the remote repo

# Merge problems

If a push is rejected because of changes in the remote repo that you do not have, just pull first with the `--rebase` flag.

```
git pull --rebase
```

That adds your commit(s) on top of the commits you had been missing.

If that does not work because of changes in a single file in multiple commits, follow the instructions git gives you.

1. `git pull` (already assumed to be done above)
2. Read the message about which files have conflicts
3. `micro conflicted_file.md` and edit the file
4. `git add .`
5. `git commit -m 'fix conflict message...'`
6. `git push`
