#!/bin/bash

curl -X PATCH -H 'Accept: application/vnd.github.v3+json' \
-H "Authorization: token ${GITHUB_TOKEN}" https://api.github.com/repos/vodkaskywalker/pobfrontend/releases/36591114 \
--data @<(cat <<-EOF
{ "tag_name":"PathOfBuilding",
"target_commitish": "master",
"name": "PathOfBuilding",
"body": "build by Travis CI ${TR_TAG}",
"draft": false, "prerelease": false }
EOF
)
