#!/bin/bash

# ARCH
arch=$(uname -a)

# CPU PHYSICAL
phyproc=$(grep "physical id" /proc/cpuinfo | sort | uniq | wc -l)

# VCPU
vcpu=$(grep "^processor" /proc/cpuinfo | wc -l)

# RAM
ram_total=$(free --mega | awk '$1 == "Mem:" {print $2}')
ram_free=$(free --mega | awk '$1 == "Mem:" {print $4}')
ram_use_percent=$(free --mega | awk '$1 == "Mem:" {printf("%.2f"), $3/$2*100}')

# DISK
disk_total=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_total += $2} END {printf ("%.1fGb"), disk_total/1024}')
disk_free=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_use += $4} END {print disk_use}')
disk_use_percent=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_u += $3} {disk_total += $2} END {printf("%d", disk_u/disk_total*100}')

# CPU LOAD
cpu_load=$(top -bn1 | grep "^%Cpu" | awk '{printf("%.1f%%"), $2}')

# LAST BOOT
last_boot=$(who -b | awk '{print $3 " " $4}')

# LVM USE
lvm_active=$(lsblk | grep "lvm" | awk '{if ($1) {print "yes";exit;} else {print "no";exit;}}')

# TCP CONNECTIONS
tcpc=$(ss -t | grep ESTAB | wc -l)
tcpc=$(ss -s | grep "TCP:" | awk '{printf("%d\n"), $4}')

# USER LOG
ulog=$(users | wc -w)

# NETWORK
ipv4=$(hostname -I)
mac=$(ip link | grep "ether" | awk '{print $2}')

# SUDO
num_cmd=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

wall "	#Architecture: $arch
		#CPU physical: $phyproc
		#vCPU: $vcpu
		#Memory Usage: $ram_free/${ram_total}MB ($ram_use_percent%)
		#Disk Usage: $disk_free/${disk_total} ($disk_use_percent%)
		#CPU Load: $cpu_load
		#Last boot: $last_boot
		#LVM use: $lvm_active
		#Connections TCP: $tcpc ESTABLISHED
		#User log: $ulog
		#Network: IP $ipv4 ($mac)
		#Sudo: $num_cmd cmd"
