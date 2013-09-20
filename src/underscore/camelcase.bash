type -t string_separator_camelcase > /dev/null ||
    source $(dirname "${BASH_SOURCE}")/../separator/camelcase.bash

string_underscore_camelcase()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    fi

    string_separator_camelcase "_" "${string}"
}
