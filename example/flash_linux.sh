#!/bin/bash

# Set the path to the .uf2 file
FILE="build/$1"

# Find the Pico's mount point
PICO_MOUNT=$(df -h | grep RPI-RP2 | awk '{print $NF}')

# Check if the Pico is mounted
if [ -z "$PICO_MOUNT" ]; then
  echo "Error: Pico is not mounted. Please put it in BOOTSEL mode."
  exit 1
fi

# Copy the .uf2 file to the Pico
echo "Copying $FILE to $PICO_MOUNT..."
cp "$FILE" "$PICO_MOUNT"

echo "Done! The Pico should reboot and run your program."
