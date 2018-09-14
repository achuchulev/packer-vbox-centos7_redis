#!/bin/bash

# Script that install Redis

# Add the EPEL repository, and update YUM to confirm your change
yum install -y epel-release

# Install Redis
yum install -y redis

# Start Redis
systemctl start redis

# Enable automatically start Redis on boot
systemctl enable redis

# Verify the Installation
redis-cli ping
