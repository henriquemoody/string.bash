string_lower()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat <&0)
    fi

    echo "${string}" | sed -E 's/(\w)/\l\1/g'
}
