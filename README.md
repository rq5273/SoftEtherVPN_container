# SoftEtherVPN_container
Building and running description about container which run SoftEtherVPN with Podman.

Please see about SoftEtherVPN. <https://www.softether.org/>

This make it possible to run SoftEtherVPN server on a container and use SoftEtherVPN in Linux without any software installation to your environment.

This container is considered to use only VPNAzure without port opening.

Please see about VPNAzure.

<https://www.softether.org/4-docs/2-howto/6.VPN_Server_Behind_NAT_or_Firewall/2.VPN_Azure>

# How to use?
Please clone this repository and run install.sh.

After running install.sh, please run "vpncmd" command to configure settings.

Before the installation, please see codes to understand how it works. 


# How to configure VPNServer? 
Please see here.

<https://www.softether.org/4-docs/1-manual/6._Command_Line_Management_Utility_Manual/6.1_Overview_of_vpncmd>

Commands below are neccesary to configure VPNAzure in vpncmd.
```
BridgeDeviceList
BridgeCreate
DynamicDnsGetStatus
DynamicDnsSetHostname
VpnAzureSetEnable yes
Hub DEFAULT #Move to Hub setting
UserCreate
UserPasswordSet
exit
```
