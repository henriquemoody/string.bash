#!/usr/bin/env bats

load ../../source

@test "Convert underscore to camelcase passing string as argument" {
    run string_underscore_camelcase "this_is_a_string"

    [ "${output}" == "thisIsAString" ]
}

@test "Convert underscore to camelcase using a pipe" {
    output=$(echo "This_is_a_string" | string_underscore_camelcase)

    [ "${output}" == "ThisIsAString" ]
}
