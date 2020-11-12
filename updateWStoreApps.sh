#!/bin/bash
# should be run at the shell like ./updateAPPNAME.sh <<Tablet Name>> <<Current APP NAME Ver. Number>>

#TODO: Need some if statements here for a few things. 
#
#	1) Need to try pinging the devices first and if it fails move on 
#	2) We need to try setting up a timeout value, something like 500 seconds?


#Seperate the outputs so its not unreadable
echo "#####################################################$1###############################################################"
#Copy the files
cp -r "\\\\<PATH TO THE SHARE WHERE THE APP IS>\\." "\\\\$1\C$\<APPNAME>\\"
#Create a new install script to get around psexec jank, remove an old one if it is present 
rm "\\\\$1\C$\APPNAME\install.ps1"
echo "cd C:\\APPNAME\\" >> "\\\\$1\C$\APPNAME\install.ps1"
#Pipe the contents of the working install script into the new one
cat "\\\\$1\C$\APPNAME\install_APPNAME_$2.ps1" >> "\\\\$1\C$\APPNAME\install.ps1"
#See what the new script holds:
cat "\\\\$1\C$\APPNAME\install.ps1"
#Run PsExec so that it gets installed.
PsExec64.exe "\\\\$1" 'powershell.exe' -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile -file "C:\APPNAME\install.ps1"
echo "##########################################################################################################################"
