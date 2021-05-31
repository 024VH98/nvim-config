#!/usr/bin/env bash
mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/after/plugin
mkdir -p ~/.config/nvim/lua

# link wholesale
for f in `find -E . -regex ".*\.vim$|.*\.lua$"`; do
    rm -rf ~/.config/nvim/$f
    ln -s ~/Documents/nvim-config/$f ~/.config/nvim/$f
done

