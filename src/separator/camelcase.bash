# @depends string_escape
string_separator_camelcase()
{
    local separator="${1}"
    local string="${2}"

    if [[ -z "${separator}" ]]; then
        return 1
    fi

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat <&0)
    fi

    separator=$(string_escape --type regex "${1}" | sed 's#/#\\/#g')

    echo "${string}" | sed -E "s/${separator}(\w)/\u\1/g"
}
