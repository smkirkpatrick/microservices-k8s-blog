#!/bin/sh

CWD="$(pwd)"
echo "CWD: $CWD"

declare -a NODE_SERVICES=(
"client"
"event-bus"
"moderation"
"query"
"comments"
"posts"
);

for SERVICE in "${NODE_SERVICES[@]}"
do
  echo "Audit: $SERVICE"
  cd $SERVICE
  npm audit fix
  cd $CWD
done

