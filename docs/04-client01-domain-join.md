# CLIENT01 Domain Join

## Objective

Configure CLIENT01 as a Windows workstation and join it to the lab.local Active Directory domain.

## Virtual Machine Configuration

| Setting | Value |
|---|---|
| VM name | CLIENT01 |
| OS | Windows 11 Enterprise Evaluation |
| RAM | 4 GB |
| CPU | 2 vCPU |
| Disk | 50 GB |
| Network | Internal Network: AD-LAB |

## Network Configuration

| Setting | Value |
|---|---|
| IP address | 10.10.10.20 |
| Subnet mask | 255.255.255.0 |
| Default gateway | None |
| DNS server | 10.10.10.10 |

## Domain Join

| Setting | Value |
|---|---|
| Domain | lab.local |
| Domain account used | LAB\\Administrateur |
| Final OU | OU=Workstations,DC=lab,DC=local |

## Verification Commands

On CLIENT01:

```powershell
whoami
hostname
ipconfig /all
ping 10.10.10.10
nslookup lab.local
nltest /dsgetdc:lab.local