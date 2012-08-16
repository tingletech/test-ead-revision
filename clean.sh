#!/usr/bin/env bash
set -eu
# http://stackoverflow.com/questions/226703/how-do-i-prompt-for-input-in-a-linux-shell-script
echo "Do you wish to delete EAD-Revision, ead-test-col and generated files for a clean run?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) rm -rf EAD-Revision/ ead-test-col/ *.xsd target/ ; exit ;;
        No ) exit;;
    esac
done


