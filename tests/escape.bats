#!/usr/bin/env bats

load ../source

@test "Finish with 1 when passing an unrecognized '--type/-t' argument" {
    run string_escape --type "chumba"

    [ "${status}" -eq 1 ]

    run string_escape -t "xuplau"

    [ "${status}" -eq 1 ]
}

@test "Escape a quotes by default as parameter" {
    expected="That\\'s my boy"

    run string_escape "That's my boy"

    [ "${output}" == "${expected}" ]

    run string_escape --type quote "That's my boy"

    [ "${output}" == "${expected}" ]

    run string_escape -t quote "That's my boy"

    [ "${output}" == "${expected}" ]
}

@test "Escape a quotes by default in a pipe" {
    expected='We have some \"rules\"'

    output=$(echo 'We have some "rules"' | string_escape)

    [ "${output}" == "${expected}" ]

    output=$(echo 'We have some "rules"' | string_escape --type quote)

    [ "${output}" == "${expected}" ]

    output=$(echo 'We have some "rules"' | string_escape -t quote)

    [ "${output}" == "${expected}" ]
}

@test "Escape a REGEX when defined" {
    run string_escape --type regex '0a[1b]2c$3d.4e*5f+6g^7h?8i(9j)Fk\'

    [ "${output}" == '0a\[1b\]2c\$3d\.4e\*5f\+6g\^7h\?8i\(9j\)Fk\\' ]
}
