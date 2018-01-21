#!/bin/sh

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable `ApplePressAndHold` in IDEs to avoid conflicts with vim mode
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.pycharm ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.CLion ApplePressAndHoldEnabled -bool false
