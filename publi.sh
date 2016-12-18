# publi.sh
# change the branch names appropriately
git checkout master
rm -rf _site/
jekyll build
git add --all
git commit -m "`date`"
git push origin master
git push origin `git subtree split --prefix _site/ master`:gh-pages --force
