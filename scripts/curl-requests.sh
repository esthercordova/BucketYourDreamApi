# post curl request to create a new item
curl --include --request POST http://localhost:3000/items \
--header "Content-Type: application/json" \
--data '{
    "item": {
        "title": "Curl title test",
        "description": "Curl description test",
        "status": "dream",
        "user_id": "4"
    }
}'

curl --include --request DELETE http://localhost:3000/items/6 \
  --header "Authorization: Token token=BAhJIiVmMDZlY2MyNmUxZDAyZmU2MWRmM2NhMDBmODk2ZTQxYgY6BkVG--2a3245ec21b785516419018856acce5396bf6380"

  curl --include --request PATCH http://localhost:3000/items/5 \
    --header "Authorization: Token token=BAhJIiVmMDZlY2MyNmUxZDAyZmU2MWRmM2NhMDBmODk2ZTQxYgY6BkVG--2a3245ec21b785516419018856acce5396bf6380" \
    --header "Content-Type: application/json" \
    --data '{
      "item": {
        "title": "new title",
        "description": " new description"
      }
    }'

    curl --include --request GET http://localhost:3000/items \
      --header "Authorization: Token token=BAhJIiVmMDZlY2MyNmUxZDAyZmU2MWRmM2NhMDBmODk2ZTQxYgY6BkVG--2a3245ec21b785516419018856acce5396bf6380"
