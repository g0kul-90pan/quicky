#!/bin/bash
# InPath -- verifies that a specified program is either valid as is 
# or can be found in the PATH directory list

in_path()
{
	# Given a command and the PATH, tries to find the command, Returns 0 if 
	# found and executable; 1 if not. Note this temporarily modifies the IFS
	# (Internal Field Separator) but restores it upon completion
	cmd=$1 ourpath=$2 result=1
	oldIFS="$IFS" IFS=":"

	for directory in "$ourpath"
	do
		echo "$directory"
		if [ -x $directory$cmd ] ; then # -x => if file exists and is executable
			result=0 # If we're here, we found the command.
		fi
	done

	IFS=$oldIFS
	return $result
}

checkForCmdInPath()
{
	var=$1

	if [ "$var" != "" ] ; then
		if [ "${var:0:1}" = "/" ] ; then
			if [ ! -x $var ];then
				return 1
			fi
		elif ! in_path "$var" "$PATH" ; then
			return 2
		fi
	fi
}

# User console
echo "$ourpath"
if [ $# -ne 1 ] ; then
	echo "Usage: $0 command" >&2
	exit 1
fi

checkForCmdInPath "$1"
case $? in # https://stackoverflow.com/questions/5163144/what-are-the-special-dollar-sign-shell-variables
	# is the most foreground pipline exit status
	0 ) echo "$1 found in PATH"  ;;
	1 ) echo "$1 not found or executable" ;;
	2 ) echo "$1 not found in PATH"		;;
esac

exit 0
