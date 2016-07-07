#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"


curl --include --request DELETE http://localhost:3000/items/1 \
--header "Authorization: Token token=BAhJIiUyNzRiZjEwMTgzMTUzYThkNDM4Y2Y2N2E1MzY0MmZjMwY6BkVG--1327a714115dfa5829a50c979277d5ddf59732c7"
