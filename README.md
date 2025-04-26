## Get_disabled_users_by_policy
	
* Find all disabled users in Azure AD.

* Print their names.

* Look up any policies connected to them.

* Print out the policy names if found.

## Convert-AzureObjectldtoSid
Azure logs (like sign-ins, audit logs, etc.), events often record the ObjectId instead of a user's actual name or SID.

This script assist in that it takes an Azure AD Object ID (e.g.: ```a1b2c3d4-5678-9abc-def0-1234567890ab```).
and converts it to e.g. ```Resolved SID: S-1-12-1-123456789-987654321-123456789-987654321```
