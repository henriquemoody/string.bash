#!/usr/bin/env bats

load ../../src/dash/camelcase

@test "Convert dash to camelcase passing string as argument" {
    run string_dash_camelcase "this-is-a-string"

    [ "${output}" == "thisIsAString" ]
}

@test "Convert dash to camelcase using a pipe" {
    output=$(echo "This-is-a-string" | string_dash_camelcase)

    [ "${output}" == "ThisIsAString" ]
}
