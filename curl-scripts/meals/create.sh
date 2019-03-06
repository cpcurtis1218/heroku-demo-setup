#!/bin/bash

curl "http://localhost:4741/meals" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "meal": {
      "amount": "'"${AMOUNT}"'",
      "unit": "'"${UNIT}"'",
      "ingredient_id": "'"${INGREDIENT}"'",
      "recipe_id": "'"${RECIPE}"'"
    }
  }'

echo
