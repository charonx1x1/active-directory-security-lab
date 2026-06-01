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
- [x] Created first Group Policy Object
- [x] Applied security baseline GPO to Workstations OU
- [x] Verified GPO application on CLIENT01
- [x] Configure shared folders and permissions
- [ ] Add Kali Linux for security testing
- [ ] Perform Active Directory enumeration
- [ ] Apply hardening measures

## Skills Practiced

* Windows Server administration
* Active Directory Domain Services
* DNS configuration
* Organizational Units management
* Domain users and groups
* Domain-joined workstations
* Group Policy management
* SMB shared folders
* NTFS and share permissions
* Active Directory access control
* AGDLP permission model
* PowerShell administration
* VirtualBox networking
* Technical documentation


## Shared Folders and Permissions

Department-based shared folders were created on DC01 and access was managed using Active Directory security groups.

| Share            | Access Group  | Example Authorized User |
| ---------------- | ------------- | ----------------------- |
| `\\DC01\IT`      | DL_IT_RW      | alice.martin            |
| `\\DC01\HR`      | DL_HR_RW      | sophie.bernard          |
| `\\DC01\Finance` | DL_Finance_RW | karim.amrani            |
| `\\DC01\Sales`   | DL_Sales_RW   | lucas.moreau            |
| `\\DC01\Public`  | DL_Public_RW  | All department groups   |

The lab uses a simplified AGDLP model:

```text
User Accounts → Global Groups → Domain Local Groups → Permissions
```

Example:

```text
karim.amrani → GG_Finance → DL_Finance_RW → \\DC01\Finance
```


## Repository Structure

```text
docs/          Detailed documentation and notes
scripts/       PowerShell scripts used in the lab
screenshots/   Visual proof of configuration steps
diagrams/      Lab architecture diagrams