#!/bin/sh

git clone https://$GIT_USER:$GIT_PASS@$GIT_REPO -b $GIT_BRANCH
cd $(basename $GIT_REPO)

git config user.email $GIT_MAIL
git config user.name $GIT_USERNAME

sed -i -e "s#image: $SED_IMAGE:.*#image: $SED_IMAGE:$SED_TAG#g" $SED_FILE

git commit -am "$GIT_COMMIT_MSG"
git push origin $GIT_BRANCH