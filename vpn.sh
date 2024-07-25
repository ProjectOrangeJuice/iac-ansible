apt install wireguard 
wg genkey | tee privatekey | wg pubkey > publickey


config 


[Interface]
Address = 192.168.2.10/32
PrivateKey = 

[Peer]
PublicKey = 
Endpoint = remote.local:51825
AllowedIPs = 192.168.2.1/32
PersistentKeepalive = 25



wg-quick up wg0

or
systemctl enable wg-quick@wg0
systemctl start wg-quick@wg0

