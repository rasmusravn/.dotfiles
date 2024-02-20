alias cat bat
alias news newsboat
alias rm "rm -i"
alias ml himalaya
alias mlr "himalaya read"
alias mlw "himalaya write"
alias cp "cp -i"
alias vim nvim
alias mv "mv -i"
alias mkdir "mkdir -p"
alias h history
alias which "type -a"
#alias ls "exa -lg --header --icons"
set -x FZF_DEFAULT_COMMAND 'ag -g "" --hidden --ignore .git'
set -Ux EDITOR nvim
if status is-interactive
    # Commands to run in interactive sessions can go here
end
function mn
    set filename ~/saml/hurtige/(date +'%y-%m-%d_%H_')$argv[1].md
    nvim $filename
end
function mnd
    set filename ~/saml/{$argv[1]}/(date +'%y-%m-%d_%H_')$argv[2].md
    nvim $filename
end
pyenv init - | source
starship init fish | source
zoxide init fish | source
status --is-interactive; and pyenv virtualenv-init - | source

# add scripts to path
set -Ux fish_user_paths $fish_user_paths ~/.dotfiles/scripts/
