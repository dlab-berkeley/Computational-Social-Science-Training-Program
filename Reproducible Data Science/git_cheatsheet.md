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

## Connecting local to remote repo

Go to [GitHub.com](https://github.com/) and create new repo. Then follow the instructions under **"…or push an existing repository from the command line"**:

| Instruction | Command |
|---------|-------------|
| add origin | `git remote add origin <URL>` |
| push changes to main branch | `git push -u origin main`|

## Fetching and pulling

| Instruction | Command |
|---------|-------------|
| fetch a repo (doesn't merge) | `git fetch remote` |
| check status | `git status` |
| pull the repo (merge) | `git pull` |
| check the log (including commit hashes) | `git log --oneline --all` |
| go to some commit | `git checkout <commit hash>` |


## Working with branches

| Instruction | Command |
|---------|-------------|
| check all local branches | `git branch` |
| change main branch from “master” to "main" | `git branch -m main` |
| go to main branch | `git checkout main` or `git switch main`|
| create and go to new branch | `git checkout -b <branch-name>` or `git switch -c <branch-name>`|
| go to specific commit & make new branch in one step | `git checkout -b <branch name> <commit hash>` |
| merge changes from named commit with current branch | `git merge <branch_name>` |
| see both remote and local branches | `git branch -a` |
| push and create new remote branch | `git push --set-upstream origin <branch-name>` or `git push -u origin <branch_name>` |

Note that remote branches do not have to have the same name as the local branches they are tracking.


## Forking, branching, and pull requests (using our repo as an example)

Go to [our class repo](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/) and create a fork. This creates your own server-side copy. Then:

| Instruction | Command |
|---------|-------------|
| clone the repo | `git clone <URL>` | 
| create new branch | `git checkout -b <branch-name>` or `git switch -c <branch-name>`|
| stage changes | `git add *` |
| create commit | `git commit -m “<some message>”` |
| push commit |  `git push -u origin <branch-name>` |

On [GitHub.com](https://github.com/), you can now create a pull request from your new branch to the 'official' repository. This needs to be approved by a repository maintainer.

## Managing git conflicts

Merge conflicts occur when competing changes are made to the same line of a file, or when one person edits a file and another person deletes the same file. To resolve a merge conflict caused by competing line changes, you must choose which changes to incorporate from the different branches in a new commit.

| Instruction | Command |
|---------|-------------|
| list of commits that are causing a conflict | `git log --merge` | 
| see differences between states, repos, or files | `git diff` |

Open the file that has merge conflicts. Delete the conflict markers `<<<<<<<`, `=======`, `>>>>>>>` and make the changes you want in the final merge.

