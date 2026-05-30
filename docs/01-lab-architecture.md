# Lab Architecture

## Objective

The objective of this lab is to simulate a small enterprise Active Directory environment using VirtualBox.

## Network Design

| Component | Value |
|---|---|
| VirtualBox network mode | Internal Network |
| Network name | AD-LAB |
| IP range | 10.10.10.0/24 |
| DNS server | 10.10.10.10 |

## Machines

| Hostname | Role | IP Address | DNS |
|---|---|---|---|
| DC01 | Domain Controller, DNS Server | 10.10.10.10 | 10.10.10.10 |
| CLIENT01 | Workstation | 10.10.10.20 | 10.10.10.10 |

## Architecture Diagram


VirtualBox Internal Network: AD-LAB
Network: 10.10.10.0/24

+-------------------------+
| DC01                    |
| Windows Server 2022     |
| Domain Controller       |
| DNS Server              |
| IP: 10.10.10.10         |
+-----------+-------------+
            |
            |
+-----------+-------------+
| CLIENT01                |
| Windows 11 Enterprise   |
| Domain-joined client    |
| IP: 10.10.10.20         |
| DNS: 10.10.10.10        |
+-------------------------+