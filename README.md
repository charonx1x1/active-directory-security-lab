# Active Directory Security Lab

## Overview

This project simulates a small enterprise Active Directory environment using Windows Server 2022 and a Windows client machine.

The goal is to build a realistic lab to learn Active Directory administration, Windows networking, domain authentication, Group Policy management, and later attack-and-defense scenarios in a controlled environment.

## Current Architecture

| Machine | Role | IP Address | OS |
|---|---|---|---|
| DC01 | Domain Controller, DNS Server | 10.10.10.10 | Windows Server 2022 |
| CLIENT01 | Domain-joined workstation | 10.10.10.20 | Windows 11 Enterprise |

## Domain Information

| Item | Value |
|---|---|
| Domain name | lab.local |
| NetBIOS name | LAB |
| Network | 10.10.10.0/24 |
| VirtualBox Network | Internal Network: AD-LAB |

## Current Progress

- [x] Created DC01 virtual machine
- [x] Installed Windows Server 2022
- [x] Configured static IP address on DC01
- [x] Installed Active Directory Domain Services
- [x] Promoted DC01 as Domain Controller
- [x] Created the lab.local domain
- [x] Created Organizational Units
- [x] Created domain users
- [x] Created security groups
- [x] Created CLIENT01 virtual machine
- [x] Joined CLIENT01 to the lab.local domain
- [x] Moved CLIENT01 to the Workstations OU
- [ ] Create first Group Policy Object
- [ ] Configure shared folders and permissions
- [ ] Add Kali Linux for security testing
- [ ] Perform Active Directory enumeration
- [ ] Apply hardening measures

## Skills Practiced

- Windows Server administration
- Active Directory Domain Services
- DNS configuration
- Organizational Units management
- Domain users and groups
- Domain-joined workstations
- PowerShell administration
- VirtualBox networking
- Technical documentation

## Repository Structure

```text
docs/          Detailed documentation and notes
scripts/       PowerShell scripts used in the lab
screenshots/   Visual proof of configuration steps
diagrams/      Lab architecture diagrams