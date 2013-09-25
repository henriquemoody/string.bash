#!/usr/bin/env bats

load ../../source

@test "Finish with 1 when passing no arguments" {
    run string_camelcase_separator

    [ "${status}" -eq 1 ]
}

@test "Convert camelcase to separator passing string as argument" {
    run string_camelcase_separator " " "thisIsAString"
    echo ${output}

    [ "${output}" == "this Is A String" ]
}

@test "Convert camelcase to separator using a pipe" {
    output=$(echo "thisIsAString" | string_camelcase_separator " ")
    expected="this Is A String"

    [ "${output}" == "${expected}" ]
}

@test "Convert camelcase to separator even when separator is a REGEX expression" {
    run string_camelcase_separator "/" "thisIsAString"

    [ "${output}" == "this/Is/A/String" ]

    run string_camelcase_separator "*" "thisIsAString"

    [ "${output}" == "this*Is*A*String" ]

    run string_camelcase_separator "+" "thisIsAString"

    [ "${output}" == "this+Is+A+String" ]
}
