## Project-wise Security groups https entries
# In this file we list the PUBLIC IP's for the build servers (or their NAT gateways) that
# need to access our common servers (Git, Nexus, Sonar etc) via SSH.
# For each IP address, add a comment with information on which resource is using that IP:
# IP:   Name:   Account:    Region:     Instance:
# Example: # IP: XX.XX.XX.XX  Name: XX CI SERVER  Account: XXXXXXXXXXX     Region: eu-west-1   Instance: i-XXXXXXXXXXX
#
# There is a confluence page describing this (https://abc.com/pages/viewpage.action?pageId=5475570),


# CI SSH inbound CIDR
# IP: x.x.x.x  Name: xxxx CI SERVER      Account: xxx      Region: eu-west-1  Instance: i-xxxxxxxxxxxxxx
# IP: x.x.x.x Name: xx CI         Account: xxx-acc		 Region: us-east-1  Instance: i-xxxxxxxxxxxxxxxx
#..............................
ssh_cidr = ["x.x.x.x/32", "X.X.X.X/32"]