curl --include --request POST http://localhost:3000/items \
--header "Content-Type: application/json" \
--data '{
    "item": {
        "title": "Curl title",
        "description": "Curl description"
    }
}'
