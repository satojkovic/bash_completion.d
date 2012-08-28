have pm-uninstall && {
_short_opts()
{
    local cur opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts="-v -f -c -n -q -h -V -l -L"

    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}

_long_opts()
{
    local cur opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts="--verbose --force --checkdeps --no-checkdeps --quiet --help --version --local-lib --local-lib-contained"

    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
}

_pm_uninstall()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    if [[ "$cur" == --* ]]; then
        _long_opts
    elif [[ "$cur" == -* ]]; then
        _short_opts
    fi

}
complete -F _pm_uninstall pm-uninstall
}