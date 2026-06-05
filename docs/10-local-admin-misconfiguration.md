# Local Administrator Misconfiguration

## Objective

Create a controlled Active Directory misconfiguration by adding the `GG_IT` group to the local Administrators group on domain-joined workstations.

## Misconfiguration

A GPO named `GPO_Workstations_Local_Admin_Misconfig` was linked to the `Workstations` OU.

The GPO adds:

```text
LAB\GG_IT
```

to the local Administrators group of CLIENT01.

## Why this is risky

`GG_IT` is a business group containing IT users.

By adding this group to the local Administrators group, every user in `GG_IT`, including `alice.martin`, receives local administrator privileges on CLIENT01.

This is risky because local administrator rights can allow a user to:

- install software;
- change system settings;
- dump local credentials;
- disable security controls;
- increase the impact of a compromised account.

## Verification

The following command was used on CLIENT01:

```powershell
net localgroup Administrateurs
```

or:

```powershell
net localgroup Administrators
```

The output showed that `LAB\GG_IT` was a member of the local Administrators group.

## Result

The misconfiguration was successfully created and verified.