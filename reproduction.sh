#!/bin/sh
set -o nounset
set -o errexit
set -o xtrace

rm -rf "$(brew --repository)/Library/Taps/issue-20533-repro"*
rm -rf issue-20533-repro
mkdir issue-20533-repro
ln -s "${PWD}/issue-20533-repro" "$(brew --repository)/Library/Taps/issue-20533-repro"

git clone https://github.com/Homebrew/homebrew-cask issue-20533-repro/homebrew-cask
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-cask"
brew desc issue-20533-repro/cask/keepingyouawake
brew info issue-20533-repro/cask/keepingyouawake
brew fetch issue-20533-repro/cask/keepingyouawake || true

git clone https://github.com/Homebrew/homebrew-cask "$(brew --repository)/Library/Taps/issue-20533-repro-works/homebrew-cask"
brew fetch issue-20533-repro/cask/keepingyouawake || true

ln -s "$(brew --repository)/Library/Taps/issue-20533-repro-works" "$(brew --repository)/Library/Taps/issue-20533-repro-nope"

brew fetch issue-20533-repro-nope/cask/keepingyouawake || true

git clone https://github.com/arlol/homebrew-tap.git issue-20533-repro/homebrew-arlol-tap
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-arlol-tap"
brew desc issue-20533-repro/arlol-tap/chorito
brew info issue-20533-repro/arlol-tap/chorito
brew fetch issue-20533-repro/arlol-tap/chorito || true

git clone https://github.com/iilonmasc/homebrew-powerlevel9k.git issue-20533-repro/homebrew-powerlevel9k
ls -lsa "$(brew --repository)/Library/Taps/issue-20533-repro/homebrew-powerlevel9k"
brew desc issue-20533-repro/powerlevel9k/powerlevel9k
brew info issue-20533-repro/powerlevel9k/powerlevel9k
brew fetch issue-20533-repro/powerlevel9k/powerlevel9k || true

ls -lsa "$(brew --repository)/Library/Taps/arlol/homebrew-brew-fetch-reproduction"
brew desc arlol/brew-fetch-reproduction/powerlevel9k
brew info arlol/brew-fetch-reproduction/powerlevel9k
brew fetch arlol/brew-fetch-reproduction/powerlevel9k || true
