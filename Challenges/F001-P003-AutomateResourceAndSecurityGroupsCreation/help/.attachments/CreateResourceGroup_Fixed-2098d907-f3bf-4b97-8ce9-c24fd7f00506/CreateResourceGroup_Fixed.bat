REM create resource group
call az group create --name "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation" --location "West US"

REM assign security group
call az role assignment create --role Contributor --assignee-object-id "b208c336-b58e-4a2a-a839-e3d0edbd87e6" --resource-group "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation" 