string_title()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    fi

    echo "${string}" | sed -E 's/\b(\w)/\u\1/g'
}
