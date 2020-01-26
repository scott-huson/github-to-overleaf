#!/bin/bash
# This file connects a github repo to an overleaf project and overrites all the overleaf files. 
# Copyright © Scott Huson 2020
echo Starting Github-Overleaf connection

# Read information before starting it all and validate
echo GitHub Clone Link:
read github_repo_link
echo Overleaf Project Link:
read overleaf_link
read -p 'Overleaf Username (Email):' overleaf_username
read -sp 'Overleaf Password:' overleaf_password

# Move to repo folder
cd ..
# Clone the repo
git clone $github_repo_link

# Get the repo name
# url="git://github.com/some-user/my-repo.git"
# url="https://github.com/some-user/my-repo.git"
re="^(https|git)(:\/\/|@)([^\/:]+)[\/:]([^\/:]+)\/(.+).git$"

if [[ $github_repo_link =~ $re ]]; then    
    protocol=${BASH_REMATCH[1]}
    separator=${BASH_REMATCH[2]}
    hostname=${BASH_REMATCH[3]}
    user=${BASH_REMATCH[4]}
    repo=${BASH_REMATCH[5]}
fi

cd $repo
git remote add overleaf $overleaf_link
git checkout master
git pull overleaf master --allow-unrelated-histories --no-edit
git revert --mainline 1 HEAD --no-edit
git push overleaf master

echo ...
echo All done! Your overleaf and repo are connected. 
echo Use 'git pull overleaf' and 'git push overleaf' to retrieve edits.


