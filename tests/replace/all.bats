#!/usr/bin/env bats

load ../../source

@test "Replace all chars to defined argument" {
    run string_replace_all '*' 'Henrique Moody'

    [[ "${output}" = '**************' ]]
}

@test "Replace all chars to defined argument in a pipe" {
    output=$(echo "Henrique Moody" | string_replace_all '*')

    [[ "${output}" = '**************' ]]
}

@test "Replace all chars to defined argument in a pipe even if it if empty" {
    output=$(echo "Henrique Moody" | string_replace_all)

    [[ -z "${output}" ]]
}
