#!/bin/bash

test_suites=("TestSuite_Search.robot" "TestSuite_AddComment.robot" "TestSuite_GetAnnouncement.robot" "TestSuite_CreateBoard.robot" "TestSuite_CreateList.robot" "TestSuite_CreateCard.robot")

for suite in "${test_suites[@]}"; do
    base_name=$(basename "$suite" .robot)
    robot -d results -o "${base_name}_output.xml" -l "${base_name}_log.html" -r "${base_name}_report.html" "tests/$suite"
done
