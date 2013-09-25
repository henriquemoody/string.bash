#!/usr/bin/env bats

load ../source

@test "Finish with 1 when passing no 'search' argument" {
    run string_replace

    [ "${status}" -eq 1 ]
}

@test "Finish with 2 when passing an invalid '--type' option value" {
    run string_replace -t something "search" "replace" "String to search."

    [ "${status}" -eq 2 ]
}

@test "Replace a using plain text" {
    run string_replace -t plain "search" "replace" "String to search."

    [ "${output}" = "String to replace." ]
}

@test "Replace a using REGEX text" {
    run string_replace -t regex "\s+" " " "String     to    replace."

    [ "${output}" = "String to replace." ]
}

@test "Replace a using plain text by default" {
    run string_replace "search" "replace" "String to search."

    [ "${output}" = "String to replace." ]
}
