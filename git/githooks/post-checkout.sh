#!/usr/bin/env sh
# Triggers a rebuild whenever a checkout is conducted that affects
# one of the trigger files. Typically, these are things like vendored
# package manifests e.g. package.json (node) or composer.json (php).
last_hash=$1
next_hash=$2
# AFAIK I don't know how to get the name of the file that changed, in which
# case we woudl check if that file is in our list of rebuild triggers.
only_file=!$3

changes=$(git diff --name-status $1..$2)
rebuild_triggers=(package.json build-script composer.lock composer.json)
build_script="$(git rev-parse --show-toplevel)/build-script"

for change in $changes; do
  for trigger_file in $rebuild_triggers; do
    echo $change
    if [[ $change == *$trigger_file* ]]; then
      sh $build_script
      exit
    fi
  done
done
