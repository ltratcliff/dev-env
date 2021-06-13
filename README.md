# Forked from https://www.codemag.com/Article/1811021/Docker-for-Developers
# Docker based Univeral base Image dev environment


Here is what it gives me,
1. Basic commands like sudo, curl, nano
2. Installs latest version of python, golang & java
3. Installs ohmyzsh, and the powerline fonts
4. Git support

## Usage
0. Ensure you have docker installed and running
1. Clone this repo
2. Open terminal and run, `chmod +x build.sh`
3. And run `chmod +x run.sh`
4. Run `./build.sh`
5. Run `./run.sh`

Easy! This should give you a linux prompt for a user called "devuser" with password "p@ssword1". This user is a sudoer.

# If you wish to change the zsh theme, 

1. cd ~
2. sudo chmod +x installthemes.sh
3. ./installthemes.sh
4. Edit your .zshrc, and change the theme (I like p10k)
5. Optionally capture it using docker commit - docker commit d2dc5693a86a ubi8:ltratcliff
