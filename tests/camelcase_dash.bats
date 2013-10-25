#!/usr/bin/env bats

load ../source

@test "Convert camelcase to dash passing string as argument" {
    run string_camelcase_dash 'thisIsAString'
    echo ${output}

    [ "${output}" == "this-Is-A-String" ]
}

@test "Convert camelcase to dash using a pipe" {
    output=$(echo "thisIsAString" | string_camelcase_dash)
    expected="this-Is-A-String"

    [ "${output}" == "${expected}" ]
}
