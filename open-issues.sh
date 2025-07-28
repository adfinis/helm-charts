#!/bin/bash


REPO="adfinis/helm-charts"
ASSIGNEE="Xelef2000"

ls charts/*apps/values.yaml -1 | grep -v "sentry-apps" | while read valueFile; do
  echo "Processing file: $valueFile"
  
  egrep -o "^[a-zA-Z]+:$" "$valueFile" | while read -r app; do
    name=$(echo "$app" | tr -d ":")
    repoURL=$(yq e ".${name}.repoURL" "$valueFile")
    targetRevision=$(yq e ".${name}.targetRevision" "$valueFile")
    chart=$(yq e ".${name}.chart" "$valueFile")
    
    curVers=$(curl --silent -qk "${repoURL}/index.yaml" | yq e ".entries.${chart}[0].version" -)

    echo "----------------------------------------"
    echo "Checking: ${name}"
    echo "  -> Your Version (targetRevision): ${targetRevision}"
    echo "  -> Latest Version Available:      ${curVers}"
    echo "----------------------------------------"
    
    if [[ "$curVers" != "$targetRevision" && "$curVers" != "null" ]]; then
      
      read -r -d '' body <<EOF
New version available for **${name}**!<br/><br/>Current \`targetRevision\` set: \`${targetRevision}\`<br/>New version available: \`${curVers}\`<br/><br/>Please consider creating a PR to update the \`targetRevision\` in this file: [${valueFile}](https://github.com/${REPO}/tree/main/${valueFile})<br/><br/>Thanks.
EOF
      
      echo "✅ Found new version for ${name}! Creating and assigning issue..."
      
      json_payload=$(jq -n \
        --arg title "New Version Available: ${name} ${curVers}" \
        --arg body "$body" \
        --arg assignee "$ASSIGNEE" \
        '{title: $title, body: $body, assignees: [$assignee]}')
        
      curl --silent -X "POST" "https://api.github.com/repos/${REPO}/issues" \
        -H "Accept: application/vnd.github.v3+json" \
        -H "Authorization: token ${GITHUB_PAT}" \
        -d "$json_payload"
    fi
  done
done

echo "Script finished."
