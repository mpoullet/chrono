#!/bin/sh
configurations=("Debug" "Release")
for i in ${!configurations[*]}
do
	xcodebuild -IDEBuildOperationMaxNumberOfConcurrentCompileTasks=4 -configuration ${configurations[$i]} clean > /dev/null 2>&1
	xcodebuild -IDEBuildOperationMaxNumberOfConcurrentCompileTasks=4 -configuration ${configurations[$i]}
done
