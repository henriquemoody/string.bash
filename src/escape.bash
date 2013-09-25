string_escape()
{
    local type
    local chars
    local string

    if [[ "${1}" = "--type" ]] || [[ "${1}" = "-t" ]]; then
        type="${2}"
        shift 2
    else
        type="quote"
    fi

    case "${type}" in
        quote)
            chars=="'\""
        ;;
        regex)
            chars=']$.*+\^?()['
        ;;
        *)
            return 1
        ;;
    esac

    if [[ -z "${1}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    else
        string="${1}"
    fi

    echo "${string}" | sed -E "s/([${chars}])/\\\\\1/g"
}
