#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"


curl --include --request DELETE http://localhost:3000/items/11 \
--header "Authorization: Token token=BAhJIiU5N2VmNDYzMDMwNjdiZDJhNWJiMWZkMWYxZTc0N2Y1MAY6BkVG--f517cfab804e1841ead315cad48686a03de4f752" \
--data '{
    "item": {
        "user_id": "4"
    }
}'
