#!/bin/sh -l

echo "Sending dependabot notification"
cd
curl -d '{"name":"'$(python /github/workspace/setup.py --name)'", "version":"'$(python /github/workspace/setup.py --version)'", "package-manager":"pip"}' -H "Content-Type: application/json" -H "Authorization: Personal ${{ INPUT_GITHUB_TOKEN }}" -X POST https://api.dependabot.com/release_notifications/private