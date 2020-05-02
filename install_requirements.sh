#!/usr/bin/env bash

set -e

if [[ "$EUID" -ne 0 ]]; then
  echo Must execute this with root user. Try sudo su if this is a vagrant VM
  exit 1
fi

pacman -Syu --noconfirm

pacman -S sudo python python-passlib ansible --noconfirm
