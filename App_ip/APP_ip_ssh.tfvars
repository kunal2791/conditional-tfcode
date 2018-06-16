## Project-wise Security groups https entries
# In this file we list the PUBLIC IP's for the build servers (or their NAT gateways) that
# need to access our common servers (Git, Nexus, Sonar etc) via ssh.
# For each IP address, add a comment with information on which resource is using that IP:
# IP:   Name:   Account:    Region:     Instance:
# Example: # IP: y.y.y.y  Name: y.y.y.y CI SERVER  Account: APP-servers     Region: eu-west-1   Instance: i-yyyyyyyy
#
# There is a wiki page describing this (https://yyyy.com/CloudOps),
# but it is not 100% up-to-date so we move all information into this file instead.

#  APP-servers ssh inbound CIDR
#....................................
ssh_cidr = ["y.y.y.y/32", "y.y.y.y/32"]
#....................................
# Accent ssh inbound CIDR
#..............................
#..............................

#variable file for https security group configurations
#......................................................
sg_name = "APP-servers_ip"
#............................................
