#!/usr/bin/env bash

#Welcome to swaplady!

#Swaplady is a script that "cleans" your SWAPFILE don't know if it works with swap partitions. (Didn't try either use at your own risk)

sudo swapoff -a

sleep 30

sudo swapon -a

#AlopexTMNT
