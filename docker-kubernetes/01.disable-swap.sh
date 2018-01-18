#!/bin/bash
echo "current swap status";
cat /proc/swaps;
echo "swapping off";
swapoff -a;
cat /proc/swaps;
