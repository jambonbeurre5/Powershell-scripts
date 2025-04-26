# Get all users and their account status
$disabledUsers = Get-AzureADUser | Where-Object { $_.AccountEnabled -eq $false}

# Loop through each disabled user and get policy details
foreach ($user in $disabledUsers) {

# Display user principal name or display name
$user.DisplayName

# Check policies applied to the user (This requires extended policy auditing, available through MS Graph)
$policies = Get-AzureADMSPolicy -Filter "applicableTo eq '$($user.ObjectId)'"

# Display the policies that disabled the account
foreach ($policy in $policies) {
    Write-Host "Disabled by Policy: $($policy.DisplayName)"
    }
}
