# Password used only for local lab accounts.
# Do not reuse this password in real environments.

$password = ConvertTo-SecureString "ChangeMe-LabPassword123!" -AsPlainText -Force

New-ADGroup -Name "GG_IT" -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=lab,DC=local"
New-ADGroup -Name "GG_HR" -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=lab,DC=local"
New-ADGroup -Name "GG_Finance" -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=lab,DC=local"
New-ADGroup -Name "GG_Sales" -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=lab,DC=local"

New-ADUser -Name "Alice Martin" -GivenName "Alice" -Surname "Martin" -SamAccountName "alice.martin" -UserPrincipalName "alice.martin@lab.local" -Path "OU=IT,OU=Employees,DC=lab,DC=local" -AccountPassword $password -Enabled $true -PasswordNeverExpires $true

New-ADUser -Name "Sophie Bernard" -GivenName "Sophie" -Surname "Bernard" -SamAccountName "sophie.bernard" -UserPrincipalName "sophie.bernard@lab.local" -Path "OU=HR,OU=Employees,DC=lab,DC=local" -AccountPassword $password -Enabled $true -PasswordNeverExpires $true

New-ADUser -Name "Karim Amrani" -GivenName "Karim" -Surname "Amrani" -SamAccountName "karim.amrani" -UserPrincipalName "karim.amrani@lab.local" -Path "OU=Finance,OU=Employees,DC=lab,DC=local" -AccountPassword $password -Enabled $true -PasswordNeverExpires $true

New-ADUser -Name "Lucas Moreau" -GivenName "Lucas" -Surname "Moreau" -SamAccountName "lucas.moreau" -UserPrincipalName "lucas.moreau@lab.local" -Path "OU=Sales,OU=Employees,DC=lab,DC=local" -AccountPassword $password -Enabled $true -PasswordNeverExpires $true

Add-ADGroupMember -Identity "GG_IT" -Members "alice.martin"
Add-ADGroupMember -Identity "GG_HR" -Members "sophie.bernard"
Add-ADGroupMember -Identity "GG_Finance" -Members "karim.amrani"
Add-ADGroupMember -Identity "GG_Sales" -Members "lucas.moreau"