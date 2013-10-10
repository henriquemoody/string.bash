string_upper()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat <&0)
    fi

    echo "${string}" | sed -E 's/(\w)/\u\1/g'
}
