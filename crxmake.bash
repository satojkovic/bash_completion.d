have crxmake &&
_crxmake()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--extension-output --help --ignore-dir --ignore-file --key-output --mode --pack-extension --pack-extension-key --verbose --zip-output"
    
    if [[ ${cur} == -* ]] ; then
	COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
	return 0
    fi
} && 
complete -F _crxmake crxmake

