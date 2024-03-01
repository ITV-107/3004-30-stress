#! /bin/bash

# Runs HTTPERF.
# Uses the --hog option for serious testing
run_httperf() {
	echo -e "\n\n- Rate of $2 packets/s and number of connections = $3\n"
	httperf --hog --server $1 --rate $2 --num-conns=$3 --port=8081
}


# Runs HTTPERF multiple times, incrementing the rate by 100 each time.
iter_httperf() {
	for i in {100..3000..100}
	do
		run_httperf $1 $i $2
	done
}

# iterate over httperf using a set of simultaneous connections.
iter_httperf $1 6250
iter_httperf $1 12500
iter_httperf $1 25000
