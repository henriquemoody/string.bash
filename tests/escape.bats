#!/usr/bin/env bats

load ../src/escape

@test "Escape a string parameter" {
    run string_escape "That's my boy"

    [ "${output}" == "That\\'s my boy" ]
}

@test "Escape a string in a pipe" {
    output=$(echo 'We have some "rules"' | string_escape)

    [ "${output}" == 'We have some \"rules\"' ]
}

@test "Escape a REGEX" {
    run string_escape -r '0a[1b]2c$3d.4e*5f+6g^7h?8i(9j)Fk\'

    [ "${output}" == '0a\[1b\]2c\$3d\.4e\*5f\+6g\^7h\?8i\(9j\)Fk\\' ]
}
