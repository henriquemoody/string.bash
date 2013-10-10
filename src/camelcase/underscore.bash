# @depends string_camelcase_separator
string_camelcase_underscore()
{
    local string="${1}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat <&0)
    fi

    string_camelcase_separator "_" "${string}"
}
