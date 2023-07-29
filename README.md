
A ping checker with email functionality

Is Up, Paul? by Ryan Kitty & ChatGPT. A ping checker with email functionality. Will ping an IP address and then send an email if it doesn't reply, or print the results in the console.

Usage:

1. Replace 'your_server_ip' with the IP address you want to ping
2. Replace email_recipient@here.com with the address you want to recieve the notifications at.
3. run chmod +x isupaul.sh
4. ???
5. Profit

Without any flags, the script will print the result of the ping in the console. If you want it to send an email if the ping fails, pass the -d flag to the script. The script will always print a sucessful ping to the console, it will not email a success.