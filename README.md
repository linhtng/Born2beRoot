# Born2beRoot
This document is a System Administration related exercise

1. How a virtual machine works?
A virtual machine is an application that emulates a whole computer and runs inside your physical computer. It works as a separate independent machine, but it runs as a process on your host operating system. It's a convenient way to dedicate a portion of your computer resources to a specific task or software.

2. What SELinux or AppArmor is?
AppArmor ("Application Armor") or Security-Enhanced Linux (SELinux) is a Linux kernel security module that allows the system administrator to define access controls for the applications, processes, and files on a system. AppArmor works by granting access first, then applying restrictions. SELinux, however, restricts access to all applications by default and grants access only to users that present the proper certifications.

3. The difference between aptitude and apt?
Aptitude is a high-level package manager while APT is lower-level package manager which can be used by other higher-level package managers. Aptitude comes with an interactive UI in addition to that of the text-only. APT, on the other hand, lacks UI. Aptitude has more features and hence can be termed as a better package management tool compared to that of apt-get.

4. How LVM works and what it is all about?
LVM, or Logical Volume Management, is a storage device management technology that gives users the power to pool and abstract the physical layout of component storage devices for easier and flexible administration. It can be used to combine physical volumes into volume groups to unify the storage space available on a system. Afterwards, administrators can segment the volume group into arbitrary logical volumes, which act as flexible partitions.

5. What ufw is and the value of using it
Developed to ease iptables firewall configuration, ufw provides a user friendly way to create an IPv4 or IPv6 host-based firewall.
Value: security, user-friendly, easy.

6. What ssh is and the value of using it
SSH provides password or public-key based authentication and encrypts connections between two network endpoints.
In addition to providing strong encryption, SSH is widely used by network administrators to manage systems and applications remotely, deliver software patches, or execute commands and move files.

7. What cron is?
The cron command-line utility is a job scheduler on Unix-like operating systems. Users who set up and maintain software environments use cron to schedule jobs, also known as cron jobs, to run periodically at fixed times, dates, or intervals
