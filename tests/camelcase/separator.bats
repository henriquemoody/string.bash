#!/usr/bin/env bats

load ../../src/camelcase/separator

@test "Finish with 1 when passing no separator" {
    run string_camelcase_separator

    [ "${status}" -eq 1 ]
}

@test "Convert a separator to camel case string passing it as parameter" {
    run string_camelcase_separator '_' 'thisIsAString'
    echo ${output}

    [ "${output}" == "this_Is_A_String" ]
}

@test "Convert a separator to camel case string using a pipe" {
    output=$(echo "thisIsAString" | string_camelcase_separator "-")
    expected="this-Is-A-String"

    [ "${output}" == "${expected}" ]
}

@test "Convert a separator to camel case string even separator is a slash" {
    run string_camelcase_separator '/' 'thisIsAString'

    [ "${output}" == "this/Is/A/String" ]
}
