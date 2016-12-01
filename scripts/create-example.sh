#!/bin/bash

API="http://localhost:4741"
URL_PATH="/quotes"
TEXT="Test Test Test"
TOKEN="BAhJIiU2NjZmYzRkOWY5NDY0OWU4NDQ0N2FhMDNlYzZjN2U4ZQY6BkVG--31494570601951324dba4f47d46c15e4c1f9e145"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "quote": {
      "quoteText": "'"${TEXT}"'"
    }
  }'

echo
