# Create a folder 'myproject' and go into it
mkdir /tmp/myproject
cd /tmp/myproject

# Initialise a git repository and rename the default branch
git init
git branch -m main

# Create a Readme file, stage then commit it
echo -e 'This is a super project\n\n\n\nWelcome' > readme.txt
git status
git add readme.txt
git status
git commit -m 'my first commit'
git status
git log --graph --decorate --oneline

# Create a file that should not be shared
echo my_api_key=abc123 > credential.txt
git status
echo credential.txt > .gitignore
git add –-all
git commit -m "ignore credential file"
git status

# Create a branch, go on it, create a new file and make a change in the readme
git branch develop
git checkout develop
echo 'print("hello world")' > app.py
sed -i 's/a/our/g' readme.txt
git status
git add --all
git commit -m "V1"
git log --graph --decorate --oneline

# Go back to the main branch and commit a change on readme, that is consistent with the change made in develop
git checkout main
echo "(but still WIP)" >> readme.txt
git commit -am "hotfix"
git log --graph --decorate --oneline

# Merge
git merge develop
git log --graph --decorate --oneline

git blame readme.txt
git blame credential.txt
