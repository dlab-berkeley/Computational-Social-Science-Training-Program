# [Computational Social Science] 
## 1-3 GitHub Intro


# Introduction to GitHub

Throughout this course, we'll be using a platform called [GitHub](https://github.com/). GitHub is a popular code hosting platform. It has lots of features that make version control and collaboration easier. Version control refers to the techniques for managing changes to software and code, and easily going back and forth between older and new versions of a code base. Getting familiar with GitHub and all of its tools can take some time, but the benefits for open science and streamlined collaboration are worth it.

At some point in your career, you have probably found yourself in a situation like this:

![Final.doc](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/finaldoc.jpeg)

GitHub is a useful tool because it removes a lot of the obstacles that we usually face when we are collaborating with others. Instead of saving multiple versions of the same document, GitHub lets us iterate on the same document while recording how it has changed over time. Rather than sending collaborators messily named documents, everyone can work from the same GitHub repository. GitHub also has tools for resolving editing conflicts between collaborators and creating a clear workflow.

# Getting Started

First, let's get started by making GitHub accounts. Navigate to GitHub's [homepage](https://github.com). Navigate to "Sign Up" in the top right hand side of the page. I recommend you create an account using your berkeley.edu account.

![Sign Up](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/github%20sign%20up.png)

After today's lab, I recommend you head over to GitHub Education and follow the instructions for activating your [free student developer pack](https://education.github.com/pack/offers). The student developer pack is free for as long as you are a student, and offers several benefits. The most important one of these will be GitHub Pro which gives you access to more collaboration tools and the ability to make unlimited private repositories. You might also consider exploring some of the other benefits like access to cloud services like Amazon Web Services or Microsoft Azure. 

# Navigating GitHub

## Interacting with Other Repos

GitHub is built on top of [git](https://en.wikipedia.org/wiki/Git), which is a Linux-based version-control system. Git is used by software engineers and data scientists to track changes in code and other files, work together, and support distributed workflows. GitHub builds on top of the core toolkit by providing a suite of tools and graphical interfaces that streamline collaboration and code organization. Let's take a look at some of the features on the webpage. The first thing we will look at is how to interact with other users' repositories. Follow along by navigating to the GitHub repo for the [Computational Social Science](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program) course. 

![Interact With Repos](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/repo%20interaction.png)

There are three basic ways you can interact with someone else's repo:

- **Watch**: Notify you when there are changes or conversations in the repo.
- **Star**: Add this repo to a list of repos that appear in your feed. Think of this as "favoriting" a repo.
- **Fork**: Make a copy of this repository in your own account. This is useful if you are not directly involved with a project but want to build on top of someone else's code.

GitHub can be a great resource because it provides access to the world's largest collection of source code, and it hosts many open source projects. Depending on your field, there may already be lots of repositories available that are worth exploring. Try to do the following steps:

1. Find the search bar in the top left.
2. Search for repositories based on some key words that are common for your field. For example, try searching "public health" or "economics."
3. Star and/or fork a repository that you find.

You can also follow specific users to see all of the repositories associated with them. This is a great way to see what others are working on and keep up to date with new developments. For example, try navigating to [KQ's page](https://github.com/sociologyquinn/) page and following it. 

## Create Your Own Repo

Next, let's look at how to make your own repos. Over time, you will create new repos to host code for your projects and collaborations. Doing so will help others reproduce your code, and serve as a useful way to showcase your work to employers and other social scientists. From the GitHub homepage, look for the "New" button near the top left.

![New Repo](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/github%20new%20repo.png)

Once you do this, click the green button, then name your new repository "My First Repository" or whatever else you like. Make sure you click the box to initialize it with a README.

![Initialize New Repo](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/github%20create%20repo.png) 

# Git from Command Line

## Configure credentials

Now we will see how to use some of git's core functions to work with repos and use version control. First, make sure to configure your global options for GitHub so that you don't have to login every time you want to do something. Open a bash terminal and do the following (substitute your GitHub handle and username):

```
git config --global user.name "Your Username"
git config --global user.email "your.email@berkeley.edu"
```

Then to make sure you only need to type in your password once, run the following:

```
git config --global credential.helper cache
```

The next time you try to interact with a git repo from the command line (as we'll do momentarily), you'll be asked to type in your username and password. If you are prompted to set up a Personal Access Token (PAT), follow [these steps](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token) to create one and enter the PAT instead of your password. Make sure you check off at least "repo" in step 8. Once you set this up, you shouldn't have to go through this process again. 

## Basic Workflow

First, we'll go through working with your own repository on your own. Some key terms:

- **Clone**: Download and copy a remote directory to a newly created folder on your machine. 
- **Add**: Stage changes you made to different files to get them ready to be uploaded back to the remote repository.
- **Commit**: Add a message to describe the changes that you have made.
- **Push**: Upload your changes.

Let's start by cloning the repository that you just created. Navigate to your repo's page, and find the green "Code" button.

![Initialize New Repo](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/clone%20button.png) 

Click the button, and then copy the HTML link that is displayed. Then run the following code in your terminal (substitute your link for the one here):

```
git clone https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program.git
```

Running this command in your terminal should create a folder in your current directory with the contents of your repo. Now let's practice adding content and updating the repo. Open the README.md file and add a short description of the repo (you can do this either from command line or your favorite text editor). Save the changes in the file, and then get ready to make the changes in the repository. First enter the following command:

```
git add README.md
```

OR

```
git add *
```

You can either add individual files, or add all of the files that you have changed at once with the "\*". When working with others or on complex projects, it is generally good practice to not add all files at once.

Next add a commit message describing the changes that you made. Try to make these descriptions as meaningful as possible. Every programmer is guilt of doing something like this:

![Commit Messages](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/git%20commit.png) 

But in general, the more meaningful your commit messages and documentation, the easier it will be for you and your collaborators to revisit the code later! Try running the following code:

```
git commit -m "My first git commit message"
```

Now we're ready to make our final changes! Run the following code:

```
git push
```

This will upload your changes, and if you navigate back to your repository, you should see the changes reflected there.

## Collaborative Tools

One of the best parts about using git for managing code is that it allows you to easily collaborate on code with others. To sync your local copy of a repository with the most current version, run the following code:

```
git pull
```	

Always be sure to pull down the latest changes from a repo before you stage, commit, and push your own changes. If you don't, you could run into a merge conflict, which will prevent you from making changes to the repo.

Another useful feature is the ability to create a "branch". When working on code with others, you usually want to avoid overwriting each other's work. It is generally good practice to create a "branch" where you can work on code without colliding with your teammates. Notice on a repo page there is a main branch by default (circled in red). If you create a separate branch and work from there, none of those changes will affect the main branch. To merge those changes into the main branch, a project maintainer can look at the "pull requests" (circled in blue) to review the changes, see if they would create any conflicts, and either approve, reject, or suggest changes for them.

![Branches](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/main/images/branches.png) 

To create and switch to a new branch, do the following:

```
git checkout -b new_branch
```

This code will create a new branch called "new_branch". To switch back to the main branch, you can run the following:

```
git checkout main
```

## Default Branch Name in Github

In 2020, GitHub announced it would be changing the default branch name for new repositories created on GitHub from "master" to "main." This decision was made in the context of a broader industry conversation about the use of language with racial undertones. The terms "master" and "slave" have been commonly used in programming to describe one process/system that controls another, and the decision to change "master" to "main" is a step away from such potentially harmful terminology.

The change is particularly significant for those in social sciences and humanities, fields which are deeply invested in the critical examination of language, culture, society, and systems of power. The move towards more inclusive language in technology acknowledges and addresses the often-unexamined biases and power structures embedded in our language. This change illustrates that our technological practices are not separate from our social, cultural, and political contexts, but rather, they are deeply intertwined and have a reciprocal influence. For scholars in these fields, this shift helps reinforce the significance of their work in challenging and changing harmful or exclusionary norms, not just in overtly social spaces, but in technological ones as well.

In our tutorials and guidance, we've updated any reference to 'master' with 'main'. However, please bear in mind that in the midst of these changes, there may be instances where 'master' might still appear unintentionally.

When exploring other resources and tutorials on the internet, especially those written before this change was implemented by GitHub in 2020, you'll likely encounter 'master' used frequently. It's important to remember that in these contexts, 'master' is often synonymous with what we now refer to as 'main'.

If you encounter an error message such as "pathspec 'master' did not match any file(s) known to git," it's quite likely that you're trying to interact with a branch named 'master' that doesn't exist in your repository. In most cases, you should replace 'master' with 'main' in your command and try again. 




Now, try switching back to new_branch, make a change to the README file, and push your changes to your GitHub repo. Navigate to the github repo's webpage, click on pull requests, and check to see if you can successfully merge the changes into main. If so, merge the changes and see if they updated on the main branch! When working with teammates, it is good practice to work on separate branches, and use pull requests to merge code into a clean codebase.

## Project Management Tools

Besides the command line interface, GitHub also provides some other useful collaboration tools. Issues are useful for flagging problems with code, or requesting features that you would like the repo's maintainers to implement. They can also be used to keep track of ongoing tasks. In your groupwork, you might consider using Issues with Projects to create a board that allows you to manage various issues. Each time you create an issue, you can describe the problem, assign it to a team member, and then track its progress with the project dashboard.

![Project Management](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/main/images/projects.png) 

# Challenge Questions

These challenges are taken from [D-Lab's BashGit workshop.](https://github.com/dlab-berkeley/BashGit)

# Git Challenge 1

1. Create an example repository on your GitHub account. 

2. git clone this repository to your computer. cd into this directory.

3. Create three files named file1.txt, file2.txt, and file3.txt in your local repository using a Bash command. 

4. Stage, commit, and push file1.txt to your remote repository. Refresh the URL on your GitHub page. Do you see your commit?

5. Stage, commit, and push file2.txt and file3.txt to your remote repository as a single commit. 

# Git Challenge 2

1. Divide yourselves into groups of 3.

2. Have one person act as the "maintainer" and the other two act as "contributors" A and B. 

3. The maintainer creates a repository with a README.md file so that it can immediately be cloned. 

4. Maintainer adds contributors A and B as collaborators on the project (click "Settings" --> "Collaborators" --> "Add collaborator") 

5. The maintainer creates a file named animals.txt and adds their favorite animal to this file. 

6. Contributors A and B fork this repository and each add their favorite animals to this file. 

7. Contributors A and B then create a pull request (click the "pull request" button, then click it again) so the maintainer can see the proposed changes. 

8. Maintainer reviews changes and accepts the proposed changes. 

### Did it work!?

9. If there are no conflicts, the issue is "resolved" as long as the headers <<<< ==== and >>>> are deleted. 

10. All people in each group should add an issue using the "Issues" tab. Did you each receive emails about the creation of these issues? 

11. Click the "commits" tab to see changes made by your group members. 

# Git Challenge 3

Star the [D-Lab Computational Social Science Training Program repo](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/main/Reproducible%20Data%20Science/GitHub%20Intro.md) if you learned something! All of the materials for our course will be hosted from D-Lab's GitHub page, and you can find lots of other useful resources for Python, R, SQL, and other computational tools that we teach in our workshops.  

# What if Something Goes Wrong?

![XKCD on Git](https://github.com/dlab-berkeley/Computational-Social-Science-Training-Program/blob/master/images/git%20xkcd.png) 

Inevitably, especially as you get started, you are likely to run into errors. Usually these arise because of conflicts introduced during collaboration. You can mostly avoid these problems by making good use of branches and pull requests, or by reverting to the last point where you know things worked. We encourage you to do your best to resolve these kinds of problems directly and consult the instructors and/or stackexchange regularly. If you truly get stuck though, try downloading a fresh copy of the repo as a last resort.

# Github Pages

[Github Pages](https://docs.github.com/en/pages/quickstart) are public webpages hosted and published through GitHub. You can use it to showcase some open source projects, host a blog, or even share your résumé. Github Pages makes use of [Jekyll](https://jekyllrb.com/), a static site generator that takes Markdown files and converts them to a website. When creating a Github Pages website, you can easily load a pre-made theme and modify the content and style.

