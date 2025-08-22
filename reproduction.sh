#!/bin/sh
set -o nounset
set -o errexit
set -o xtrace

rm -rf "$(brew --repository)/Library/Taps/issue-20533-repro"
rm -rf homebrew-powerlevel9k
git clone https://github.com/iilonmasc/homebrew-powerlevel9k.git
mkdir -p "$(brew --repository)/Library/Taps/issue-20533-repro"
ln -s "${PWD}/homebrew-powerlevel9k" "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-powerlevel9k"
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-powerlevel9k"
brew desc --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k
brew info --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k
brew fetch --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k
