#!/bin/bash
# Is Up, Paul? by Ryan Kitty & ChatGPT. Will ping an IP address and then send an email if it doesn't reply.
# Replace 'your_server_ip' with the IP address you want to ping
ip_to_ping="your_server_ip"

# Function to send email
send_email() {
    echo "The IP address $ip_to_ping is unreachable." | mail -s "The IP address is unreachable" email_recipient@here.com
}

# Check for command-line arguments
while getopts ":d" opt; do
    case $opt in
        d)
            if ! ping -c 1 $ip_to_ping &> /dev/null; then
                send_email
            else
                echo "The IP address $ip_to_ping is reachable."
            fi
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done

# If no option provided, do regular ping check
if [ $OPTIND -eq 1 ]; then
    if ! ping -c 1 $ip_to_ping &> /dev/null; then
        echo "The IP address $ip_to_ping is unreachable."
    else
        echo "The IP address $ip_to_ping is reachable."
    fi
fi