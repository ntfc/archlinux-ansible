#!/usr/bin/env bash
#
# Create a dynamic ansible inventory containing only the local machine ansible
# is executed from

# Mostly based on
# https://gist.github.com/tuxfight3r/2c027f8fd70333a8288e
# and documentation from
# https://docs.ansible.com/ansible/latest/dev_guide/developing_inventory.html#id14
#
if [ "$1" == "--list" ]; then
  cat<<EOF
{
  "local": {
    "hosts": ["$(hostname)"],
    "vars": {
      "ansible_connection": "local"
    }
  }
}
EOF
elif [ "$1" == "--host" ]; then
  # not used?
  echo "{}"
else
  # not used?
  echo "{}"
fi
