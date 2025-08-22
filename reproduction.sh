#!/bin/sh
set -o nounset
set -o errexit
set -o xtrace

rm -rf "$(brew --repository)/Library/Taps/issue-20533-repro"
rm -rf issue-20533-repro
mkdir issue-20533-repro
ln -s "${PWD}/issue-20533-repro" "$(brew --repository)/Library/Taps/issue-20533-repro"

git clone https://github.com/Homebrew/homebrew-cask issue-20533-repro/homebrew-cask
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-cask"
brew desc --debug --verbose issue-20533-repro/cask/0-ad
brew info --debug --verbose issue-20533-repro/cask/0-ad
brew fetch --debug --verbose issue-20533-repro/cask/0-ad || true

git clone https://github.com/arlol/homebrew-tap.git issue-20533-repro/homebrew-arlol-tap
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-arlol-tap"
brew desc --debug --verbose issue-20533-repro/arlol-tap/chorito
brew info --debug --verbose issue-20533-repro/arlol-tap/chorito
brew fetch --debug --verbose issue-20533-repro/arlol-tap/chorito || true

git clone https://github.com/iilonmasc/homebrew-powerlevel9k.git issue-20533-repro/homebrew-powerlevel9k
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-powerlevel9k"
brew desc --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k
brew info --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k
brew fetch --debug --verbose issue-20533-repro/powerlevel9k/powerlevel9k || true

ls -lsa "$(brew --repository)/Library/Taps/arlol/homebrew-brew-fetch-reproduction"
brew desc --debug --verbose arlol/brew-fetch-reproduction/powerlevel9k
brew info --debug --verbose arlol/brew-fetch-reproduction/powerlevel9k
brew fetch --debug --verbose arlol/brew-fetch-reproduction/powerlevel9k || true
