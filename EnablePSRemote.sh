#!/bin/bash
PsExec64.exe "\\\\$1" 'powershell.exe' "Enable-PSRemoting -Force"
