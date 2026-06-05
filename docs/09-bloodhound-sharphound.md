# BloodHound and SharpHound

## Objective

Use BloodHound CE and SharpHound CE to collect and visualize Active Directory relationships in the lab.local domain.

## Tools

- BloodHound CE
- SharpHound CE
- Kali Linux
- Windows domain-joined workstation CLIENT01

## Lab Context

| Machine | Role | IP |
|---|---|---|
| DC01 | Domain Controller / DNS | 10.10.10.10 |
| CLIENT01 | Domain-joined workstation | 10.10.10.20 |
| KALI01 | BloodHound CE host | 10.10.10.30 |

## Collection Method

SharpHound CE was executed from CLIENT01 using a standard domain user account.

```powershell
.\SharpHound.exe