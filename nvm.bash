have nvm &&
_nvm()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="alias deactivate help install ls sync use"
    
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
} && 
complete -F _nvm nvm