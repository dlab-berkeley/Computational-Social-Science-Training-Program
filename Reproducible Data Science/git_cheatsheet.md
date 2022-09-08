# git cheatsheet

Check whether you have git: `git version`

If not, download git from https://git-scm.com/downloads


## Creating local repo

| Instruction | Command |
|-----------|-----------|
| create a directory | `mkdir test` |
| go into directory | `cd test` |
| initialize git | `git init` |
| create readme.md | `touch readme.md` |
| edit readme.md | `nano readme.md` - then make some edits |
| stage changes | `git add *` |
| check status | `git status` |
| commit changes | `git commit -m  "create readme"` |

## Local version control

First, make some changes and create several commits. Then:

| Instruction | Command |
|---------|-------------|
| check all local branches | `git branch` |
| if your main branch is named “master”, do this | `git branch -m main` |
| check the log (including commit hashes) | `git log --oneline --all` |
| go to some commit | `git checkout <commit hash>` |
| create and go to new branch | `git checkout -b <branch-name>` |
| OR: go to specific commit & make new branch in one step | `git checkout -b <branch name> <commit hash>` |
| go to main branch | `git checkout -b main` |
| merge changes from named commit with current branch | `git merge <branch_name>` |


## Creating local repo and connecting it to remote

Go to [GitHub.com](https://github.com/) and create new repo. Then:

| Instruction | Command |
|---------|-------------|
| add origin | `git remote add origin https://github.com/<your_username>/<your_repo_name>.git` |
| push changes | `git push -u origin main`

## Creating branches on GitHub

Go to [GitHub.com](https://github.com/) and create a new branch. Then:

| Instruction | Command |
|---------|-------------|
| pull the repo | `git pull` |
| see both remote and local branches | `git branch -a` |
| create and go to new branch | `git checkout <branch-name>` |
| push and create new remote branch | `git push --set-upstream origin <branch-name>` |


## Forking & Pull requests

Go to [our class repo](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/) and create a fork. This creates your own server-side copy. Clone your copy to your local system. Then:

| Instruction | Command |
|---------|-------------|
| create new branch | `git checkout -b <branch-name>` |
| stage changes | `git add *` |
| create commit | `git commit -m “<some message>”` |
| push commit |  `git push --set-upstream origin <branch-name>` |

On [GitHub.com](https://github.com/), you can now create a pull request from your new branch to the 'official' repository. This needs to be approved by a repository maintainer.
