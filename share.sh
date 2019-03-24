#!/bin/sh

# folder should exists before this command
sudo mount -t vboxsf myfolder /home/user/myfolder

sudo mount -t vboxsf share /home/david/Public/share

sudo mount -t vboxsf sqlite3 /mnt/sqlite3
