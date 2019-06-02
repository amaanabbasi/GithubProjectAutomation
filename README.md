# GithubProjectAutomation

Making project intialization easier with shell, python and github's api. We all have been through the repetivite
task of initializing a git repository locally then creating the repository on github to and then manually adding the remote.

This scripting tool will automate the process. All you have to provide is the repository's name and it will initialize and
create a repostiory on github for you and will also launch your favourite code editor. As of now, it will launch __VS Code__ but I will change it later.

# Supporting OS

Ubuntu, Max

# Prerequisites

* Python3
* VS Code*

# Setting It Up 

* You need to have github api token, you can get by clicking on settings -> Developers Settings -> personal Access token.
* There you need to check some of the checkboxes,I have checked all of the checkboxes under admin, user and repo.(That works fine for this particular tool).
* From there you will recieve a token that you need to paster in the create.py file.
* In the file you need to also put your username.
* Lastly, you need to put your username in place of "yourusername" in line 12 of create.sh.

