string_upper()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    fi

    echo "${string}" | sed -E 's/(\w)/\u\1/g'
}
