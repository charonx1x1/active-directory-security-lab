# GPO - Workstations Security Baseline

## Objective

Create and apply a first Group Policy Object to the Workstations Organizational Unit.

The goal is to understand how Group Policy works in an Active Directory environment and how a security setting can be centrally applied to a domain-joined workstation.

## GPO Information

| Setting | Value |
|---|---|
| GPO name | GPO_Workstations_Security_Baseline |
| Linked OU | Workstations |
| Target machine | CLIENT01 |
| Domain | lab.local |

## Configured Setting

A security message was configured to appear before user logon.

### Message title

```text
LAB Security Notice
```

### Message text

```text
Authorized access only. This workstation belongs to the lab.local Active Directory security lab.
```

## GPO Path

```text
Computer Configuration
└── Policies
    └── Windows Settings
        └── Security Settings
            └── Local Policies
                └── Security Options
```

## Verification Commands

On CLIENT01, the following command was used to force Group Policy update:

```powershell
gpupdate /force
```

The following command was used to verify applied computer policies:

```powershell
gpresult /r /scope computer
```

## Result

The GPO was successfully applied to CLIENT01.  
After reboot, the workstation displayed the configured security notice before logon.

## Skills Practiced

- Group Policy Object creation
- Linking a GPO to an Organizational Unit
- Applying computer-based policies
- Using gpupdate
- Using gpresult
- Basic Windows workstation hardening