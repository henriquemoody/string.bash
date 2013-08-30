#!/usr/bin/env bats

load ../src/upper

@test "Upper case a string parameter" {
    run string_upper 'Strings handler in Bash'

    [ "${output}" == "STRINGS HANDLER IN BASH" ]
}

@test "Upper case a string in a pipe" {
    output=$(echo 'Strings handler in Bash' | string_upper)

    [ "${output}" == "STRINGS HANDLER IN BASH" ]
}

@test "Upper case a latin string" {
    run string_upper 'órfãos'

    [ "${output}" == "ÓRFÃOS" ]
}
