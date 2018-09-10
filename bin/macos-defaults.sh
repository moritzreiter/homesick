#!/bin/sh

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Don't show persistent scrollbars in Terminal app
defaults write com.apple.Terminal AppleShowScrollBars -string WhenScrolling

# Disable `ApplePressAndHold` in some development tools
# JetBrains IDEs
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.pycharm ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.CLion ApplePressAndHoldEnabled -bool false
# VS Code
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
# Boostnote
defaults write com.electron.boostnote ApplePressAndHoldEnabled -bool false
