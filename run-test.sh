#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: run-test.sh test.swift"
  exit 1
fi

export PATH="/Users/eladb/src/build/Xcode-DebugAssert/swift-macosx-x86_64/Debug/bin:$PATH"

red()   { printf "\033[0;91m$@\033[0m\n"; }
green() { printf "\033[0;32m$@\033[0m\n"; }

run_test() {
  local test=$1
  local expected=$(mktemp -t expected.XXXX)
  local actual=$(mktemp -t actual.XXXX)
  local diff_output=$(mktemp -t diff.XXXX)

  grep "/// " ${test} | sed -e "s/^ *\/\/\/ //" > $expected
  ${test} 2> $actual 1>&2 || {
    red "FAIL: $test (${command_line})"
    cat $actual
    return 1
  }

  if diff -B ${expected} ${actual} > $diff_output; then
    green "PASS: $test ($swiftc_args)"
  else
    red "FAIL: $test ($swiftc_args)"
    cat ${diff_output} | sed -e "s/^>/\/\/\//"
    echo
  fi
}

while [ -n "$1" ]; do
  run_test $1
  shift
done
