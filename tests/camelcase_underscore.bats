#!/usr/bin/env bats

load ../source

@test "Convert camelcase to underscore passing string as argument" {
    run string_camelcase_underscore 'thisIsAString'
    echo ${output}

    [ "${output}" == "this_Is_A_String" ]
}

@test "Convert camelcase to underscore using a pipe" {
    output=$(echo "thisIsAString" | string_camelcase_underscore)
    expected="this_Is_A_String"

    [ "${output}" == "${expected}" ]
}
