#!/bin/bash

TIMES=2000
ROUTES=("/" "/io_task" "/cpu_task" "/random_sleep" "/random_status" "/chain" "/error_test")
PORTS=("8000" "8001" "8002")

for i in $(seq 1 $TIMES); do
    ROUTE=${ROUTES[$RANDOM % ${#ROUTES[@]}]}
    PORT=${PORTS[$RANDOM % ${#PORTS[@]}]}

    curl -s -o /dev/null -w "%{http_code}\n" "http://localhost:$PORT$ROUTE" &

    [ $((RANDOM % 3)) -eq 0 ] && wait

    #sleep $((RANDOM % 2 + 1))
done
