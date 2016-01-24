#!/bin/bash

ansible-playbook --connection=local --ask-sudo-pass site.yml
