#!/usr/bin/env bats

setup() {
  declare desc="some tasks executed before every unit test"
}

@test "single-line" {
  cat fixtures/single-line.txt | {
    run ./cli.js
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "debug-one" ]
    [ "${#lines[@]}" = "1" ]
  }
}

@test "single-log" {
  cat fixtures/single-log.txt | {
    run ./cli.js
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "debug-one" ]
    [ "${#lines[@]}" = "1" ]
  }
}

@test "multiple-logs-multiple-lines" {
  cat fixtures/multiple-logs-multiple-lines.txt | {
    run ./cli.js
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "debug-one" ]
    [ "${lines[1]}" = "debug-two" ]
    [ "${lines[2]}" = "debug-three" ]
    [ "${lines[3]}" = "debug-four" ]
    [ "${#lines[@]}" = "4" ]
  }
}

@test "full" {
  cat fixtures/full.txt | {
    run ./cli.js
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "debug-one" ]
    [ "${lines[1]}" = "debug-two" ]
    [ "${lines[2]}" = "debug-three" ]
    [ "${lines[3]}" = "debug-four" ]
    [ "${lines[4]}" = "info-one" ]
    [ "${lines[5]}" = "info-two" ]
    [ "${lines[6]}" = "debug-one" ]
    [ "${lines[7]}" = "debug-two" ]
    [ "${#lines[@]}" = "8" ]
  }
}
