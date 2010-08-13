#!/usr/bin/env bash
# initialize a blank git repository, pointing it at the SVN repository
git svn init https://path/to/repository -T path/to/TRUNK -b path/to/Branches -t path/to/Tags name_of_codebase

# copy in gitignore and our svn-authorsfile & wire it up for this repository
cp .gitignore name_of_codebase/
cp .svnauthors name_of_codebase/
cd name_of_codebase
git config svn.authorsfile .svnauthors

# set line-endings (see: http://help.github.com/dealing-with-lineendings/)
#git config core.autocrlf true # windows
#git config core.autocrlf input # mac

# import the repository into git
# options: 
# 	--authors-prog=/full/path/to/default-svn-author.sh
# 	--ignore-paths="VersionOne\.Web\/Help"
git svn fetch [options]

# set user name and email for individual repo
#git config user.name "Your Name"
#git config user.email "your.name@yourdomain.com"

# if you're going to continue using Git-SVN, add the authors file.
#git add .gitignore .svnauthors
#git commit -m "add gitignore and svn authors files"
