#!/data/data/com.termux/files/usr/bin/sh
LOGFILE="$HOME/.termux/twm.log"
twm_usage() {
	echo "usage:"
	echo " twm [arg] [value]"
	echo "		possible args:"
	echo " size		-- can be only arg or passed with"
	echo "	... WxH		-- (twm size 720x1480)"
	echo "	... reset	-- resets back to oem value"
	echo "	example:"
	echo "		twm size 720x1480"
	echo " 		twm size reset"
	echo " 		twm size"
	echo " "
	echo " density		-- same as size but only one intwger req."
	echo "	example:"
	echo "		twm density 320"
	echo " 		twm density reset"
	echo " "
}
twm_arg_parser() {
if [ ! -z $1 ];then
	if [ ! -z $2 ];then
			rish -c "wm $1 $2"
	else
			rish -c "wm $1"
	fi
fi
}
twm_no_args() {
	twm_usage
}
if [ "$1" == "help" ]; then
	rish -c "wm"
else
	echo $0 $@ >> $LOGFILE
fi
if [ ! -z $1 ];then
	if [ ! -z $2 ];then
			twm_arg_parser "$1" "$2"
	else
			twm_arg_parser "$1"
	fi
else
	twm_no_args
fi
