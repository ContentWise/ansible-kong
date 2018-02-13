#!/usr/bin/env bats
 
@test "Validate status code for kong" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:8001
  [[ $output = "200" ]]
}