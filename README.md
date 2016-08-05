# USB-Terminal-Server

Description:
=============
Terminal server for remotely accessing target IoT devices over LAN->USB to provide console (monitor output and provide keyboard inpupt)



Problem Statement: 
===================
- Many newer targets replaced the legacy RS232 console ports with USB console ports
- There are no commercially available USB Terminal Servers (vs Digi PortServer) available to be configured for our needs (VLM integration)


Requirements: 
==============
- Desktop Server (e.g. Dell Optiplex) running Linux (e.g. Ubuntu Server 14.04)
- USB hub (e.g. 7-port)
- USB -> RS232 Adapter (only for USB port discovery)
- Network connection to Wind River
- Optional: Arduino programmed to loop serial output


Instructions:
==============
Follow the PowerPoint to determine your tree topology and and setup udev rules for USB port mapping
Test rules and console using Minicom (with IoT Arduino board for testing serial output)
Ser2Net and VLM integration
