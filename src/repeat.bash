string_repeat()
{
    local count="${1}"
    local string="${2}"

    if [[ "${count}" -lt 1 ]]; then
        return 1
    fi

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    fi

    for ((i=0; i < count; i++)); do
        echo -en "${string}"
    done
}
