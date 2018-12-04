# Checks if a flag is present in the arguments.
hasflag() {
  local flags="$@"
  for var in $ARGS; do
    for flag in $flags; do
      if [ "$var" = "$flag" ]; then
        echo 'true'
        return
      fi
    done
  done
  echo 'false'
}

# Read the value of an option.
readopt() {
  local opts="$@"
  for var in $ARGS; do
    for opt in $opts; do
      if [[ "$var" = ${opt}* ]]; then
        local value="${var//${opt}=/}"
        if [ "$value" != "$var" ]; then
          # Value could be extracted
          echo $value
          return
        fi
      fi
    done
  done
  # Nothing found
  echo ""
}


check_error() {
  local msg="$*"
  if [ "${msg//ERROR/}" != "${msg}" ]; then
    echo "${msg}"
    exit 1
  fi
}
