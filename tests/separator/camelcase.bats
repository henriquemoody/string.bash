#!/usr/bin/env bats

load ../../source

@test "Finish with 1 when passing no arguments" {
    run string_separator_camelcase

    [ "${status}" -eq 1 ]
}

@test "Convert separator to camelcase passing string as argument" {
    run string_separator_camelcase " " "this is a string"

    [ "${output}" == "thisIsAString" ]
}

@test "Convert separator to camelcase using a pipe" {
    output=$(echo "This is a string" | string_separator_camelcase " ")

    [ "${output}" == "ThisIsAString" ]
}

@test "Convert separator to camelcase even when separator is a REGEX expression" {
    run string_separator_camelcase "/" "this/is/a/string"

    [ "${output}" == "thisIsAString" ]

    run string_separator_camelcase "+" "this+is+a+string"

    [ "${output}" == "thisIsAString" ]

    run string_separator_camelcase ".." "this..is..a..string"

    [ "${output}" == "thisIsAString" ]
}
