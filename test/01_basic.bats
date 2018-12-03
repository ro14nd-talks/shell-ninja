#!/usr/bin/env bats

load test_helper

@test "Help" {
  run $BATS_TEST_DIRNAME/../kdeploy --help
  [ $status -eq 0 ]
  assert_regexp "deployment helper"
}
