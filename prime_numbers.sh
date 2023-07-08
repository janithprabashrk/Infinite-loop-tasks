#!/bin/bash

count=0
number=2

is_prime() {
  local num=$1
  for ((i=2; i<=num/2; i++)); do
    if ((num%i == 0)); then
      return 1
    fi
  done
  return 0
}

while ((count < 20)); do
  if is_prime $number; then
    echo $number
    ((count++))
  fi
  ((number++))
done
