eval "$(/opt/homebrew/bin/brew shellenv)"


alias g++20m="g++-14 -std=c++20 -fmodules-ts -Wall -g"
alias g++20h="g++-14 -std=c++20 -fmodules-ts -c -x c++-system-header"
alias g++20i="g++-14 -std=c++20 -Wall -g"

alias sshstudent="ssh -Y nzhangho@linux.student.cs.uwaterloo.ca"

eval "$(zellij setup --generate-auto-start zsh)"

export STARSHIP_CONFIG=~/.config/starship/starship.toml

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

