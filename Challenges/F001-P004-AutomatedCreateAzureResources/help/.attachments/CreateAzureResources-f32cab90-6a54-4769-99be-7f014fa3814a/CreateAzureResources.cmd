SET Environment_name=%1

REM create appservice plan
call az appservice plan create -g "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation" -n "AppServicePlan-TeamName-%Environment_name%" --sku F1

REM create azurewebapp 
call az webapp create -g "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation" -p "AppServicePlan-TeamName-%Environment_name%" -n "WebApp-TeamName-%Environment_name%"

REM create SQL server
call az sql server create --admin-password "Gourav@123" --admin-user "gourav8jain" --location "West Europe" --name "sqlserver-teamname-%Environment_name%" --resource-group "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation"

REM create SQL database
call az sql db create --name  "db-teamname-%Environment_name%" --resource-group "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation" --server "sqlserver-teamname-%Environment_name%"

call az sql server update --resource-group "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation" --name "sqlserver-TeamName-%Environment_name%" --admin-password "Gourav@123"

REM Allow access to Azure services
call az sql server firewall-rule create --resource-group "RG-Playground-F001-P003-AutomateResourceAndSecurityGroupsCreation" --server "sqlserver-teamname-%Environment_name%" --name "azureservices" --start-ip-address "0.0.0.0" --end-ip-address "0.0.0.0"

