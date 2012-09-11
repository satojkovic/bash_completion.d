have pm-uninstall &&
_pm_uninstall()
{
    local cur opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    opts="-v -f -c -n -q -h -V -l -L --verbose --force --checkdeps --no-checkdeps --quiet --help --version --local-lib --local-lib-contained"

    if [[ ${cur} == -* ]]; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi

} &&
complete -F _pm_uninstall pm-uninstall
