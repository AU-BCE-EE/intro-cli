# Git commands

# Cloning

`git clone https://github.com/AU-BCE-EE/intro-cli.git`


# Typical workflow 

1. `git status` to check for new local work (address if present with `git add ...` and `git commit -m ...` or `git restore ...` 
2. `git pull` to download and merge in remote (GitHub) work (if merge conflict, see Merge conflict section below)
3. Edit files (text editor, RStudio, VS Code, run scripts, etc.)
4. `git add .` to stage all changes or else be more specific than `.`
5. `git commit -m 'commit message...'` to commit
6. `git push` to update the remote repo

# Merge problems

If a push is rejected because of changes in the remote repo that you do not have, just pull first with the `--rebase` flag.

```
git pull --rebase
```

This adds your commit(s) on top of the commits you had been missing.

If that does not work because of changes in a single file in multiple commits, follow the instructions git gives you.

1. `git pull` (already assumed to be done above)
2. `nano conflicted_file.md` and edit the file
3. `git add .`
4. `git commit -m 'fix conflict message...'`
5. `git push`
