# post curl request to create a new item
curl --include --request POST http://localhost:3000/items \
--header "Content-Type: application/json" \
--header "Authorization: Token token=BAhJIiVlNWQ4ZTM3Zjg1M2U2NTQwZDdkY2MxZWI4ZmM0YjJmZgY6BkVG--e0b5c52fdfd924e4f91bd8191f8a28360181591e" \
--data '{
    "item": {
        "title": "HORAYYY!!",
        "description": "ESTHER AND CHRIS GO ON AN ADVENTURE",
        "status": "dream"
    }
}'

curl --include --request DELETE http://localhost:3000/items/22 \
  --header "Authorization: Token token=BAhJIiVlNWQ4ZTM3Zjg1M2U2NTQwZDdkY2MxZWI4ZmM0YjJmZgY6BkVG--e0b5c52fdfd924e4f91bd8191f8a28360181591e"

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
