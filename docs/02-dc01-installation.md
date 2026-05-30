# DC01 Installation and Configuration

## Objective

Install and configure DC01 as the first Domain Controller of the lab.local Active Directory domain.

## Virtual Machine Configuration

| Setting | Value |
|---|---|
| VM name | DC01 |
| OS | Windows Server 2022 Standard Evaluation |
| RAM | 4 GB |
| CPU | 2 vCPU |
| Disk | 60 GB |
| Network | Internal Network: AD-LAB |

## Network Configuration

| Setting | Value |
|---|---|
| IP address | 10.10.10.10 |
| Subnet mask | 255.255.255.0 |
| Default gateway | None |
| DNS server | 10.10.10.10 |

## Roles Installed

- Active Directory Domain Services
- DNS Server

## Domain Configuration

| Setting | Value |
|---|---|
| Domain name | lab.local |
| NetBIOS name | LAB |
| Domain Controller | DC01 |

## Verification Commands

```powershell
whoami
Get-ADDomain
nslookup lab.local
ipconfig /all