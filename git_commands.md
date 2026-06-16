# Git commands

# Typical workflow for existing repository already cloned locally

1. `git status` to check for new local work (address if present with `git add ...` and `git commit -m ...` or `git restore ...` 
2. `git pull` to download and merge in remote (GitHub) work (if merge conflict, see Merge conflict section below)
3. Edit files (text editor, RStudio, VS Code, run scripts, etc.)
4. `git add .` to stage all changes or else be more specific than `.`
5. `git commit -m 'commit message...'` to commit
6. `git push` to update the remote repo

# Merge problems

If 
