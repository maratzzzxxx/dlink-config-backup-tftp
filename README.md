# dlink-config-backup-tftp
setup-tftp-centos.sh will help you to setup tftp server just for centos and redhat.
**You should have a knowledge about every command in this script**.

## How to
- To backup one switch you run:
`upload-cfg <TFTP_SERVER_ADDR> <USERNAME> <PASSWORD> <DATE>`

- To backup list of switches you should fill switches.lst like:

`<ip addr>:<username>:<password>:<ip_addr_of_tftp_server>` And You run ./backup-sw

# Note:
###### This script works only with D-Link DGS-1210 and DES-1210 you can change 'upload-cfg' to make compatible with other D-link switch.