# GithubProjectAutomation

Making, _Project Intialization_ easier with shell, python and github's api. We all have been through the repetitive
task of initializing a git repository locally, then creating the repository on github and then manually adding the remote to the local repository.

This scripting tool will automate the process. All you have to provide is the repository's name and it will initialize and
create a repostiory on github for you and will also launch your favourite code editor. As of now, it will launch __VS Code__ but I will change it later.

![githubautomation](https://user-images.githubusercontent.com/30196830/58846841-48739580-869e-11e9-9836-64439ef9c70e.gif)

# New Scripts Added in 2023

* `cron_job_to_pull_django_project.sh` - This script can be used as a cron job for Django application deployed on Gunicorn/Nginx.

# Usage 

In terminal:

`./create.sh nameofyourproject gitignore-env`

> *gitignore-env is an optional argument that can be used to initiate a .gitignore file. It fetches from the www.gitignore.io/api/ api, e.g Django, Node, Flask e.t.c

# What will it do ?

* Create a git repository locally.
* Create a repository on github.
* Add a readme.
* Add the remote to the local repository and push it to github.
* Launch VS Code

# Supporting OS

Ubuntu, Mac

# Prerequisites

* Python3
* VS Code*

# Setting It Up 

* You need to have github api token, you can get by clicking on Settings -> Developers Settings -> Personal Access Token.
* Paste the token in the create.py file.
* In the same file you need to also put your username.
* There you need to check some of the checkboxes,I have checked all of the checkboxes under admin, user and repo.(That works fine for this particular tool).
* Create a directory called my-projects in the root (Your repository will be initialized in this folder).
* Lastly, you need to put your username in place of "yourusername" in line 16 of create.sh.

# Common Errors

* Make the file executable(Permissions).

`chmod u+x create.sh`

# Todo 

- [x] Launching Vs Code

- [x] Adding .gitignore 

# Contributions

* Help in structuring the documentation
* Provide better comments in the code.
