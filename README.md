# Active Directory Security Lab

## Overview

This project simulates a small enterprise Active Directory environment in a local VirtualBox lab.

The goal is to learn Active Directory administration, Windows domain management, SMB permissions, Group Policy, and basic Active Directory security enumeration.

## Architecture

| Machine | Role | IP Address |
|---|---|---|
| DC01 | Domain Controller, DNS Server, SMB File Server | 10.10.10.10 |
| CLIENT01 | Domain-joined workstation | 10.10.10.20 |
| KALI01 | Security testing machine | 10.10.10.30 |

## Domain Information

| Item | Value |
|---|---|
| Domain | lab.local |
| NetBIOS | LAB |
| Network | 10.10.10.0/24 |
| VirtualBox Network | AD-LAB |

## Completed Steps

- [x] Created and configured DC01
- [x] Installed Active Directory Domain Services
- [x] Created the `lab.local` domain
- [x] Created OUs, users and security groups
- [x] Created and joined CLIENT01 to the domain
- [x] Applied a first GPO to the Workstations OU
- [x] Created SMB shared folders with AD-based permissions
- [x] Added KALI01 to the lab network
- [x] Performed initial AD enumeration
- [x] Collected and analyzed AD data with SharpHound and BloodHound
- [ ] Create intentional AD misconfigurations
- [ ] Analyze attack paths with BloodHound
- [ ] Apply hardening measures
- [ ] Document detection and remediation steps

## Skills Practiced

- Windows Server administration
- Active Directory Domain Services
- DNS configuration
- Organizational Units
- Users and groups management
- Group Policy management
- SMB shares and permissions
- AGDLP permission model
- Kali Linux networking
- Active Directory enumeration
- SharpHound and BloodHound analysis
- Technical documentation

## Repository Structure

```text
docs/          Detailed documentation
scripts/       PowerShell scripts
screenshots/   Screenshots and proof of work
diagrams/      Architecture diagrams
```

## Security Note

This lab is built for educational purposes only.  
All testing is performed in an isolated local environment.