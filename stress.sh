printf '\n\nMinimal stress test - rate of 10 and number of connections = 500\n'
httperf --server $1 --rate 10 --num-conns=500 --port=8081

printf '\n\nMedium stress test - rate of 500 and number of connections = 3000\n'
httperf --server $1 --rate 500 --num-conns=3000 --port=8081

printf '\n\nMaximum stress test - rate of 3000 and number of connections = 27000\n'
httperf --server $1 --rate 3000 --num-conns=27000 --port=8081
