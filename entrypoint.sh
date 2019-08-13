#!/bin/sh -l

if [[ -z "$ARTIFACTORY_URL" ]]; then
  echo "Set the ARTIFACTORY_URL please."
  exit 1
fi

if [[ -z "$REPO_NAME" ]]; then
  echo "Set the REPO_NAME please."
  exit 1
fi

if [[ -z "$FILE_PARH" ]]; then
  echo "Set the FILE_PARH please."
  exit 1
fi

if [[ -z "$FILE_NAME" ]]; then
  echo "Set the FILE_NAME please."
  exit 1
fi

if [[ -z "$USERNAME" ]]; then
  echo "Set the USERNAME please."
  exit 2
fi

if [[ -z "$PASSWORD" ]]; then
  echo "Set the USERNAME please."
  exit 3
fi


echo "🏄🏻‍♂️ Starting to upload with these params: $ARTIFACTORY_URL , $REPO_NAME , $FILE_PARH , $FILE_NAME "

curl -u $USERNAME:$PASSWORD -X PUT \
  "http://$ARTIFACTORY_URL/artifactory/$REPO_NAME/$FILE_PARH/$FILE_NAME" \
  -T ./$FILE_NAME
