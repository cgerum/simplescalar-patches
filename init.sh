DIR=`dirname $0`

rm -rf simplesim-arm

wget -c http://www.eecs.umich.edu/~taustin/code/arm/simplesim-arm-0.2.tar.gz

tar xvzf simplesim-arm-0.2.tar.gz

cd simplesim-arm

git init 
git add *
git commit -a -m "Initial Commit"

git am ../simplescalar-patches/*.patch

ln -s ../../../simplescalar-patches/commit-hook.sh .git/hooks/post-commit