echo "Cloning SoftEtherVPN_Stable sourcecode from the repository."
git clone https://github.com/SoftEtherVPN/SoftEtherVPN_Stable.git
cp Dockerfile ./SoftEtherVPN_Stable
cp cmd.sh ./SoftEtherVPN_Stable
echo "Building the container."
podman build -t vpnserver ./SoftEtherVPN_Stable/.
echo "Running the container and bash will be shown."
echo "Please enter \"vpnserver start\" and then \"vpncmd\" to configure settings."
echo "If you want to run \"vpnserver start\" in container automatically when your PC starts, please use cron."
podman run -it --privileged --network host --restart always vpnserver
