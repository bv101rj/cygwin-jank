#!/bin/bash

# copy the files to the remote machine
cp -r '\\<PATH TO WHERE THE CLIENT IS STORED>' "\\\\$1\C$"
# run the setup exe
PsExec64.exe -w "C:\Client" "\\\\$1" -c "powershell.exe" "ccmsetup.exe" "SMSSITECODE=<<YOUR SITE CODE>>"
