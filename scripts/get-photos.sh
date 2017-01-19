
API="http://localhost:4741"
URL_PATH="/photos"
ID=3
NAME="Stanley"
CATEGORY="Portrait"
TOKEN="BAhJIiU3ODc1OGUxNDYxNmZlMzUzZGE0YmZmNjY4Njk2YThjZgY6BkVG--ab2d13577e1fdddf1169720e67f094e99a132567"
URL="http://i.imgur.com/8G9PX6J.jpg"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PUT \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "photo": {
      "name": "'"${NAME}"'",
      "category": "'"${CATEGORY}"'",
      "url": "'"${URL}"'"
    }
  }'
