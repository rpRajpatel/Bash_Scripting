#!/bin/bash

# Check if the input file exists
input_file="server.txt"
if [ ! -f "$input_file" ]; then
    echo "Input file '$input_file' not found."
    exit 1
fi

# Loop through each server name in the input file
while IFS= read -r server_name; do

    # Use dig to find the IP address for the server name
    ip_address=$(dig +short "$server_name".imovetv.com)

    # Check if dig was successful in finding an IP address
    if [ -n "$ip_address" ]; then
        echo "$server_name: $ip_address"
    else
        echo "IP address not found for $server_name"
    fi

done < "$input_file"

