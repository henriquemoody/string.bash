type -t string_escape > /dev/null ||
    source $(dirname "${BASH_SOURCE}")/escape.bash

string_replace()
{
    local search
    local replace
    local string
    local type

    if [[ "${1}" = '--type' ]] || [[ "${1}" = '-t' ]]; then
        type="${2}"
        shift 2
    else
        type="plain"
    fi

    if [[ -z "${1}" ]]; then
        return 1
    elif [[ -z "${2}" ]]; then
        return 2
    fi

    case "${type}" in
        plain)
            search=$(string_escape -r "${1}")
            replace=$(string_escape -r "${2}")
        ;;
        regex)
            search="${1}"
            replace="${2}"
        ;;
        *)
            return 3
        ;;
    esac

    if [[ -z "${3}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    else
        string="${3}"
    fi

    echo "${string}" | sed -E "s/${search}/${replace}/g"
}
