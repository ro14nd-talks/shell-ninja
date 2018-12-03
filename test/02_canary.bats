#!/usr/bin/env bats

load test_helper

@test "No deployment given" {
  run $BATS_TEST_DIRNAME/../kdeploy canary --image bla
  [ $status -eq 1 ]
  assert_regexp "No deployment"
  assert_regexp "--deployment"
  assert_regexp "canary"
}

@test "No deployment given" {
  run $BATS_TEST_DIRNAME/../kdeploy canary --image bla
  [ $status -eq 1 ]
  assert_regexp "No deployment"
  assert_regexp "--deployment"
  assert_regexp "canary"
}
