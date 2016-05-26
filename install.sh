#!/bin/bash
# Installs Android Studio templates

echo "Adding templates to Android Studio..."

TEMPLATES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/something"

for i in /Applications/Android Studio.app/Contents/plugins/android/lib/templates
do
  if [[ -d $i ]]; then

    # Add templates
    echo $i/test
    mkdir -p $i/test
    cp -frv "$TEMPLATES"/* $i/test
  fi
done

echo "Done."
echo ""
echo "Restart Android Studio"

