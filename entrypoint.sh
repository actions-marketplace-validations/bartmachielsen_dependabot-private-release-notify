#!/bin/sh
echo "Sending dependabot notification"
cd /github/workspace || exit
echo 'Pushing: name='$(python setup.py --name)', version='$(python setup.py --version)';'
curl \
  -d '{"name":"'$(python setup.py --name)'", "version":"'$(python setup.py --version)'", "package-manager":"pip"}' \
  -H "Content-Type: application/json" \
  -H "Authorization: Personal $INPUT_GITHUB_TOKEN" \
  -X POST https://api.dependabot.com/release_notifications/private
echo "Finished sending dependabot notification"