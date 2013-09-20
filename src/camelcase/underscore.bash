type -t string_camelcase_separator > /dev/null ||
    source $(dirname "${BASH_SOURCE}")/separator.bash

string_camelcase_underscore()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    fi

    string_camelcase_separator "_" "${string}"
}
