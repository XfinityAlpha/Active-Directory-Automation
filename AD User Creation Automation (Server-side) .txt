# Save this as .ps1 file and execute in powershell

# Name for the new OU
$ouName = "bewOU"

# Specify the Distinguished Name (DN) of the parent location to create the new OU
# The abbreviation DC=xa,DC=local corresponds to xa.local, which is an example domain
# For any registered domain, simply adjust these values accordingly
$DN = "DC=xa,DC=local"

# Creating new OU
New-ADOrganizationalUnit -Name $ouName -Path $DN

# Set user attributes
$userAttributes = @{
    SamAccountName = "fedjohn"          
    UserPrincipalName = "fedjohn@xa.local" 
    Name = "Fedrick John"
    GivenName = "Fedrick"
    Surname = "John"
    DisplayName = "Fedrick John"
    Description = "New User Account"
    AccountPassword = (ConvertTo-SecureString "Password123" -AsPlainText -Force)
    Enabled = $true
}

# OU path to create the user in
$ouPath = "OU=bewOU,DC=xa,DC=local"

# Create the user in the specified OU
New-ADUser -Name $userAttributes.Name -SamAccountName $userAttributes.SamAccountName -UserPrincipalName $userAttributes.UserPrincipalName -GivenName $userAttributes.GivenName -Surname $userAttributes.Surname -DisplayName $userAttributes.DisplayName -Description $userAttributes.Description -AccountPassword $userAttributes.AccountPassword -Enabled $userAttributes.Enabled -Path $ouPath



# Save this as .ps1 file and execute in powershell

# Set user attributes
$userAttributes = @{
    SamAccountName = "link"          
    UserPrincipalName = "linkn@xa.local" 
    Name = "Mister Link"
    GivenName = "Link"
    Surname = "Link"
    DisplayName = "Mister Link"
    Description = "New User Account"
    AccountPassword = (ConvertTo-SecureString "Password123" -AsPlainText -Force)
    Enabled = $true
}

# OU path to create the user in
$ouPath = "OU=bewOU,DC=xa,DC=local"

# Create the user in the specified OU
New-ADUser -Name $userAttributes.Name -SamAccountName $userAttributes.SamAccountName -UserPrincipalName $userAttributes.UserPrincipalName -GivenName $userAttributes.GivenName -Surname $userAttributes.Surname -DisplayName $userAttributes.DisplayName -Description $userAttributes.Description -AccountPassword $userAttributes.AccountPassword -Enabled $userAttributes.Enabled -Path $ouPath
