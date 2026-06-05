# KALI01 Setup

## Objective

Add a Kali Linux machine to the Active Directory lab in order to perform controlled enumeration and security testing.

## Network Configuration

| Setting | Value |
|---|---|
| Hostname | KALI01 |
| IP address | 10.10.10.30 |
| Subnet mask | 255.255.255.0 |
| DNS server | 10.10.10.10 |
| VirtualBox network | Internal Network: AD-LAB |

## Verification Commands

```bash
ip a
ping -c 4 10.10.10.10
nslookup lab.local 10.10.10.10
nslookup dc01.lab.local 10.10.10.10