#!/bin/bash
xmessage-print "This utility copies the webhelp files to the recommended location so that you can access the help from within the SDx IDE. Click OK to continue."
for i in `ls`; do  cp -R $i $HOME/.Xilinx/SDx/2018.1/helpdocs/sdk/;  done
rm -Rf  $HOME/.Xilinx/SDx/2018.1/helpdocs/sdk/install-help-sdk.sh
xmessage -print "Operation Completed! You can now access the Xilinx SDK Help from within the SDx IDE.  Launch the SDx IDE and select Help - SDx Help - SDK Help to view the help files."
