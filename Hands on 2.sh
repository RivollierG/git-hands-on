mkdir /tmp/myproject
cd /tmp/myproject
git init
git branch -m main
echo -e 'This is a super project\n\n\n\nWelcome' > readme.txt
git status
git add readme.txt
git status
git commit -m 'my first commit'
git status
git log --graph --decorate --oneline
git branch develop
git checkout develop
echo 'print("hello world")' > app.py
sed -i 's/a/our/g' readme.txt
git status
git add --all
git commit -m "V1"
git checkout main
sed -i 's/a/the/g' readme.txt
echo "(but still WIP)" >> readme.txt
git commit -am "hotfix"
git log --graph --decorate --oneline
git merge develop
## fix the conflict
git add --all
git commit -m 'merge and solve conflict'
git log --graph --decorate --oneline
