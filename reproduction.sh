#!/bin/sh
set -o nounset
set -o errexit
set -o xtrace

rm -rf "$(brew --repository)/Library/Taps/issue-20533-repro"*
rm -rf issue-20533-repro
git clone https://github.com/Homebrew/homebrew-cask issue-20533-repro/homebrew-cask
ln -s "${PWD}/issue-20533-repro" "$(brew --repository)/Library/Taps/issue-20533-repro"
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-cask"
brew desc issue-20533-repro/cask/keepingyouawake
brew fetch issue-20533-repro/cask/keepingyouawake || true
brew desc issue-20533-repro/cask/0-ad
brew fetch issue-20533-repro/cask/0-ad || true
