#!/bin/zsh

# Cat wallust sequences to catch wallust colors
# Without cat it's default sequences for some reason
# P.S: could've just source .zshrc but this version is faster to boot
kitty zsh -c "cat ~/.cache/wallust/sequences && yazi"
