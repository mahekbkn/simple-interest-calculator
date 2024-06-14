#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "Simple Interest: $interest"
}

# Check if the script received three arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

calculate_simple_interest $1 $2 $3
