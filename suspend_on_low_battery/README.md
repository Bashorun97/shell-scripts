# Suspend on low battery
Automation utilities for my development workspace

Suspends my Linux machine when battery hits >=25%.
Uses systemd to for initiating the cronjob that runs the suspend_on_low_battery script.

# How to use
Add .service and .timer files to /etc/systemd/system/ folder.
Make suspend_on_low_battery an executable file and add it to /usr/bin/
Run 
`sudo systemctl daemon-reload`
`sudo systemctl start suspend_on_low_battery`
To be sure everything is working well, run:
`sudo systemctl status suspend_on_low_battery.service`

