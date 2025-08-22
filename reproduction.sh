#!/bin/sh
set -o nounset
set -o errexit
set -o xtrace

rm -rf "$(brew --repository)/Library/Taps/issue-20533-repro"
rm -rf issue-20533-repro
git clone https://github.com/iilonmasc/homebrew-powerlevel9k.git issue-20533-repro/homebrew-powerlevel9k
ln -s "${PWD}/issue-20533-repro" "$(brew --repository)/Library/Taps/issue-20533-repro"
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-powerlevel9k"
brew desc --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k
brew info --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k
brew fetch --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k

ls -lsa "$(brew --repository)/Library/Taps/arlol/homebrew-brew-fetch-reproduction"
brew desc --debug --verbose arlol/brew-fetch-reproduction/powerlevel9k
brew info --debug --verbose arlol/brew-fetch-reproduction/powerlevel9k
brew fetch --debug --verbose arlol/brew-fetch-reproduction/powerlevel9k

rm -rf "$(brew --repository)/Library/Taps/arlol"
rm -rf arlol
git clone https://github.com/arlol/homebrew-tap.git arlol/homebrew-tap
ln -s "${PWD}/arlol" "$(brew --repository)/Library/Taps/arlol"
ls -lsa "$(brew --repository)/Library/Taps/arlol/homebrew-tap"
brew desc --debug --verbose arlol/tap/chorito
brew info --debug --verbose arlol/tap/chorito
brew fetch --debug --verbose arlol/tap/chorito
