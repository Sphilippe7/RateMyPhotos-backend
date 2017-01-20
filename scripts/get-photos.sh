
TOKEN="BAhJIiU4NDE4MmU0YjQ5YmYxMjc0ZDYzZTE3ODBlOTFmNThiOQY6BkVG--59cd41cf2ad0bf1caf6e2305dfc5ad26d29e1bbd"
curl --include --request GET http://localhost:4741/photos \
  --header "Authorization: Token token=${TOKEN}"
