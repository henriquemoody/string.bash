#!/usr/bin/env bats

load ../source

@test "Lower case a string parameter" {
    run string_lower 'Strings handler in Bash'

    [ "${output}" == "strings handler in bash" ]
}

@test "Lower case a string in a pipe" {
    output=$(echo 'Strings handler in Bash' | string_lower)

    [ "${output}" == "strings handler in bash" ]
}

@test "Lower case a latin string" {
    run string_lower 'ÓRFÃOS'

    [ "${output}" == "órfãos" ]
}
