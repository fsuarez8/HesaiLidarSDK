#
# Regular cron jobs for the hesailidarsdk package
#
0 4	* * *	root	[ -x /usr/bin/hesailidarsdk_maintenance ] && /usr/bin/hesailidarsdk_maintenance
