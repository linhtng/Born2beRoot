# Born2beRoot
This document is a System Administration related exercise

1. How a virtual machine works?
A virtual machine is an application that emulates a whole computer and runs inside your physical computer. It works as a separate independent machine, but it runs as a process on your host operating system. It's a convenient way to dedicate a portion of your computer resources to a specific task or software.

2. What SELinux or AppArmor is?
AppArmor ("Application Armor") or Security-Enhanced Linux (SELinux) is a Linux kernel security module that allows the system administrator to define access controls for the applications, processes, and files on a system. AppArmor works by granting access first, then applying restrictions. SELinux, however, restricts access to all applications by default and grants access only to users that present the proper certifications.

3. The difference between aptitude and apt?
Aptitude is a high-level package manager while APT is lower-level package manager which can be used by other higher-level package managers. Aptitude comes with an interactive UI in addition to that of the text-only. APT, on the other hand, lacks UI. Aptitude has more features and hence can be termed as a better package management tool compared to that of apt-get.
