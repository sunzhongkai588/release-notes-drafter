export LC_ALL=C 

BASE_VERSION=v2.4.0
NEW_VERSION=HEAD

MERGE_BASE=$(git merge-base $BASE_VERSION $NEW_VERSION)

git log --pretty='format:%an' $MERGE_BASE..$NEW_VERSION | sort -f | uniq 

