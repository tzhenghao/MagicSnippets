#!/bin/bash

# Author: Zheng Hao Tan
# Email: tanzhao@umich.edu

ifconfig eth0 | grep "Bcast" | awk -F: '{print $3}' | awk '{print $1}'
nmap -n -sP 10.42.0.255/24
ssh -Y pi@10.42.0.60
