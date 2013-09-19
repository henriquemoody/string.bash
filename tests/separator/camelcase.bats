#!/usr/bin/env bats

load ../../src/separator/camelcase

@test "Finish with 1 when passing no separator" {
    run string_separator_camelcase

    [ "${status}" -eq 1 ]
}

@test "Convert a separator to camel case string passing it as parameter" {
    run string_separator_camelcase "_" "this_is_a_string"

    [ "${output}" == "thisIsAString" ]
}

@test "Convert a separator to camel case string using a pipe" {
    output=$(echo "this-is-a-string" | string_separator_camelcase "-")

    [ "${output}" == "thisIsAString" ]
}

@test "Convert a separator to camel case string even separator is a slash" {
    run string_separator_camelcase "/" "this/is/a/string"

    [ "${output}" == "thisIsAString" ]
}
