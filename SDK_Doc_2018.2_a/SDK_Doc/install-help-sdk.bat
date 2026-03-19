@echo off & cls
if not "%minimized%"=="" goto :minimized
set minimized=true
start /min cmd /C "%~dpnx0"
goto :EOF
:minimized
mode 75,40
powershell (New-Object -ComObject Wscript.Shell).Popup("""This utility copies the webhelp files to the recommended location so that you can access the help from within the SDx IDE.`n`nClick OK to continue.""",0,"""Accessing Xilinx SDK Help Content""",0x0)
powershell (New-Object -ComObject Wscript.Shell).Popup("""Click OK to copy the help files to %UserProfile%\.Xilinx\SDx\2018.2\helpdocs\sdk""",0,"""Accessing Xilinx SDK Help Content""",0x0)
XCOPY /E/Y *.* "%UserProfile%\.Xilinx\SDx\2018.2\helpdocs\sdk"
cd "%UserProfile%\.Xilinx\SDx\2018.2\helpdocs\sdk"
DEL *.bat
powershell (New-Object -ComObject Wscript.Shell).Popup("""Operation Completed!`n`nYou can now access the Xilinx SDK Help from within the SDx IDE. `n`nLaunch the SDx IDE and select Help `> SDx Help `> SDK Help to view the help files.""",0,"""Accessing Xilinx SDK Help Content""",0x0)