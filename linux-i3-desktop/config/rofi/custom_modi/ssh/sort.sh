#!/bin/bash
cat hosts.json | jq  'sort_by(.hostname)' > hosts.sort
mv hosts.sort hosts.json
