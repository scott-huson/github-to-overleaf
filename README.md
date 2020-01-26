# github-to-overleaf
A script to connect GitHub classroom repositories to overleaf projects. 

#### What this script does
Connects a GitHub repository of code to an empty overleaf project. It is especially useful for connecting new code from a GitHub classroom repository to Overleaf.

#### Requires:
1. An existing GitHub repository.<br/>
  Copy the clone link.
2. An existing Overleaf project (<b>Warning! This script will overwrite all Overleaf files</b>)<br/>
  Go to Menu->Sync->Git. Copy <b>only</b> the repository address.

#### How to Use:
1. Clone this repo into the folder where you want your repositories.<br/>
  `git clone git@github.com:scott-huson/github-to-overleaf.git`
2. Go into this repository where the script is.<br/>
  `cd github-to-overleaf`
3. Run the script.<br/>
  `sh git-leaf.sh`
4. Enter in your information when prompted.
