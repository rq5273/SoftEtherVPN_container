sudo su
git clone https://github.com/SoftEtherVPN/SoftEtherVPN_Stable.git
cp Dockerfile ./SoftEtherVPN_Stable
podman build -t vpnserver ./SoftEtherVPN_Stable/.
podman run -it --privileged --network host --restart always vpnserver