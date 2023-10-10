# Specify the username and password for the AD user
$adUsername = "link@xa.local"
$adPassword = ConvertTo-SecureString "Password123" -AsPlainText -Force

# Create a credential object with the AD user's credentials
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $adUsername, $adPassword

# Specify the domain name
$domainName = "xa.local"

# Connect the local machine to the AD user's profile
Add-Computer -DomainName $domainName -Credential $credential -OUPath "OU=bewOU,DC=xa,DC=local" -Restart
