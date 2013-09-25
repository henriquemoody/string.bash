# @depends string_escape
# @depends string_replace
string_replace_all()
{
    local replacement="${1}"
    local string="${2}"

    if [[ -z "${string}" ]] && [ ! -t 0 ]; then
        string=$(cat /dev/stdin)
    fi

    string_replace --type regex "." "$(echo "${replacement}" | string_escape --type regex)" "${string}"
}
