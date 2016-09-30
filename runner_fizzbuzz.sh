#!/usr/bin/env bash
for test_file in ./fizzbuzz/*test*.rb
  do
    ruby $test_file
done

