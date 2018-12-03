# Helper functions

assert_regexp() {
  [[ $output =~ $1 ]]
}

assert_not_regexp() {
  ! [[ $output =~ $1 ]]
}

assert_status() {
  [ $status = $1 ]
}

assert_command_contains_not() {
  [[ $lines[0] != *"$1"* ]]
}

extract_via_regexp() {
  local prefix=$1
  local tomatch=$2
  local re="${prefix}(${tomatch})"$'\n'
  [[ $output =~ $re ]] && echo "${BASH_REMATCH[1]}"
}
