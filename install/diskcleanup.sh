#!/bin/bash

# Verify startup volume

## CURRENT DOESN'T WORK ON SIERRA

echo -e "\n  fsck startup volume."

# Repair startup volume
sudo fsck -fly

echo -e "\n  repair startup volume."

# Repair disk
sudo diskutil repairVolume /
