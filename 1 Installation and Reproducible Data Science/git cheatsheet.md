# git cheatsheet

Download git from https://git-scm.com/downloads


## Creating local repo

| Instruction | Command |
|-----------|-----------|
| check whether you have git | `git version` |
| create a directory | `mkdir test` |
| go into directory | `cd test` |
| initialize git | `git init` |
| create readme.md | `touch readme.md` |
| edit readme.md | `nano readme.md` - then make some edits |
| stage changes | `git add *` |
| check which files are staged, unstaged, and untracked | `git status` |
| show unstaged changes between your index and working directory | `git diff` |
| commit changes | `git commit -m  "create readme"` |

## Working with branches and reverting changes

First, make some changes and create several commits. Then:

| Instruction | Command |
|---------|-------------|
| check all local branches | `git branch` |
| if your main branch is named “master”, do this | `git branch -m main` |
| see commit history (including hashes) | `git log --oneline --all` |
| go to some commit | `git checkout <commit hash>` |
| create and go to new branch | `git checkout -b <branch-name>` or `git switch -c <branch-name>`|
| OR: go to specific commit & make new branch in one step | `git checkout -b <branch name> <commit hash>` |
| go back to main branch | `git checkout main` or `git switch main`|
| merge changes from named commit with current branch | `git merge <branch_name>` |
| create new commit that undoes all of the changes made in <commit> & apply it to the current branch | `git revert <commit>` |
| remove <file> from the staging area but leave working directory unchanged | `git reset <file>` |

## Connecting local to remote repo

Go to [GitHub.com](https://github.com/) and create new repo. Then follow the instructions under **"…or push an existing repository from the command line"**:

| Instruction | Command |
|---------|-------------|
| add origin | `git remote add origin https://github.com/<your_username>/<your_repo_name>.git` |
| push changes | `git push -u origin main`

## Working with branches on GitHub

Go to [GitHub.com](https://github.com/) and create a new branch. Then:

| Instruction | Command |
|---------|-------------|
| fetch the repo (doesn't merge) | `git fetch remote` |
| check status | `git status` |
| pull the repo (merge) | `git pull` |
| see both remote and local branches | `git branch -a` |
| create and go to new branch | `git checkout <branch-name>` |
| push and create new remote branch | `git push --set-upstream origin <branch-name>` |


## Forking, branching, and pull requests (using our repo as an example)

Go to our class repo and create a fork. This creates your own server-side copy. Then:

| Instruction | Command |
|---------|-------------|
| clone the repo | `git clone <URL>` | 
| create new branch | `git checkout -b <branch-name>` or `git switch -c <branch-name>`|
| stage changes | `git add *` |
| create commit | `git commit -m “<some message>”` |
| push commit |  `git push --set-upstream origin <branch-name>` |

On [GitHub.com](https://github.com/), you can now create a pull request from your new branch to the 'official' repository. This needs to be approved by a repository maintainer.
