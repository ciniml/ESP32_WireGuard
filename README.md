# ESP32 WireGuard connection example

A WireGuard connection example based on ESP-IDF Wi-Fi station example.

## How to use example

### Requirements

This project is tested with ESP-IDF 4.2 on Ubuntu 20.04.

### Configure the project

```
idf.py menuconfig
```

In the `Example Configuration` item, you can see Wi-Fi and WireGuard configuration items. You have to configure all of these items.

* Set WiFi SSID and WiFi Password and Maximum retry under Example Configuration Options.

* Set private key of the WireGuard device to  `Wireguard Private Key`
  * `PrivateKey` item in the `[Interface]` section in the configuration file.
* Set local IP address of the WireGuard device to `Wireguard local IP address` and `Wireguard local netmask`
  * `Address` item in the `[Interface]` section in the configuration file. `netmask` must be set separatedly. e.g. set `255.255.255.255` if the Address is `192.168.0.5/32`.
* Set Wireguard remote peer public key to `Wireguard remote peer public key`
  * `PublicKey` item in the `[Peer]` section in the configuration file.
* Set Wireguard remote peer address to `Wireguard remote peer address`
  * address part of the `Endpoint` item in the `[Peer]` section in the configuration file. e.g. set `link.arc.soracom.io` if Endpoint item is `link.arc.soracom.io:11010`
* Set Wireguard remote peer port to `Wireguard remote peer port`
  * port part of the `Endpoint` item in the `[Peer]` section in the configuration file. e.g. set `11010` if Endpoint item is `link.arc.soracom.io:11010`
* Set target server address for ping check to `ICMP echo request target address`
