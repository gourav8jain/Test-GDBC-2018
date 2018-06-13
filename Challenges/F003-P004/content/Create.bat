REM create resource group
call az group create --name 'RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation' --location 'West Europe'

REM create keyvault
call az keyvault create --name 'gdbcKeyVault' --resource-group 'RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation' --location 'West Europe'

REM get the application ID (AppID element) (change the SPN name)
call az ad sp list --display-name GDBC-AutomateSPN-Teamname-F003-P001

REM Set Keyvault policy settings, replace your AppID
REM samle call az keyvault set-policy --name 'gdbcKeyVault' --resource-group 'gdbcResourceGroup' --secret-permissions get list --spn ba12f2d1-2c84-41d3-ba45-587b05612345 
call az keyvault set-policy --name 'gdbcKeyVault' --resource-group 'gdbcResourceGroup' --secret-permissions get list --spn ac3b1bb8-1162-481f-a97d-177f2659e92c

REM Create secret
call az keyvault secret set --vault-name 'gdbcKeyVault' --name 'Admin-Password' --value 'Pa$$w0rd'

