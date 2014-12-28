#!/bin/bash
# Stolen from: https://github.com/bennylope/macbook-configuration
# Purpose:
#	* bootstrap machine in order to prepare for ansible playbook run

set -e

# Download and install Command Line Tools if no developer tools exist
#       * previous evaluation didn't work completely, due to gcc binary existing for vanilla os x install
#       * gcc output on vanilla osx box:
#       * 'xcode-select: note: no developer tools were found at '/Applications/Xcode.app', requesting install.
#       * Choose an option in the dialog to download the command line developer tools'
#
# Evaluate 2 conditions
#       * ensure dev tools are installed by checking the output of gcc
#       * check to see if gcc binary even exists ( original logic )
# if either of the conditions are met, install dev tools
# if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
# Always install Xcode developer tools
    echo "Info   | Install   | xcode"
    xcode-select --install
# fi

# Run Xcode tool to agree to license
echo "Agree to license, ignore any clang errors"
sudo xcrun cc || true

# Download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Info   | Install   | homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    echo "Info   | Install   | Ansible"
    brew update
    brew install ansible
fi

echo "Bootstrap complete. Run ansible-playbook main.yml"
