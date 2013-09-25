#!/usr/bin/env bats

load ../source

@test "Captalize a string parameter" {
    run string_title 'Strings handler in BASH'

    [ "${output}" == "Strings Handler In BASH" ]
}

@test "Captalize a string in a pipe" {
    output=$(echo 'Strings handler in BASH' | string_title)

    [ "${output}" == "Strings Handler In BASH" ]
}

@test "Captalize a latin string" {
    run string_title 'órfãos'

    [ "${output}" == "Órfãos" ]
}
