#!/usr/bin/env bats

load ../src/repeat

@test "Finish with 1 when counter is not passed as argument" {
    run string_repeat

    [ "${status}" -eq 1 ]
}

@test "Finish with 1 when counter is not greater than 0" {
    run string_repeat 0

    [ "${status}" -eq 1 ]

    run string_repeat -1

    [ "${status}" -eq 1 ]
}

@test "Repeat an passing string as argument" {
    run string_repeat 3 "Some string\n"

    [ "${lines[0]}" = "Some string" ]
    [ "${lines[1]}" = "Some string" ]
    [ "${lines[2]}" = "Some string" ]
    [ "${lines[3]}" = "" ]
}

@test "Repeat an using pipe" {
    output=$(echo "*" | string_repeat 10)
    expected="**********"

    [ "${output}" = "${expected}" ]
}
