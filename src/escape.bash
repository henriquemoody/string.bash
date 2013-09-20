string_escape()
{
    local string
    local list="'\""

    while [[ "${1}" = -* ]]; do
        case "${1}" in
            --regex | -r)
                list=']$.*+\^?()['
            ;;
            *)
                return 1
            ;;
        esac
        shift
    done

    if [[ -z "${1}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    else
        string="${1}"
    fi

    echo "${string}" | sed -E "s/([${list}])/\\\\\1/g"
}
