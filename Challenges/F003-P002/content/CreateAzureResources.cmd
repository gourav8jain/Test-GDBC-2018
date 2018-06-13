SET Environment_name=%2
SET ResourceGroup_name=%4

REM create appservice plan
call az appservice plan create -g "%ResourceGroup_name%" -n "AppServicePlan-TeamName-%Environment_name%" --sku F1

REM create azurewebapp 
call az webapp create -g "%ResourceGroup_name%" -p "AppServicePlan-TeamName-%Environment_name%" -n "WebApp-TeamName-%Environment_name%"

REM create SQL server
call az sql server create --admin-password "Gourav@123" --admin-user "gourav8jain" --location "West Europe" --name "sqlserver-teamname-%Environment_name%" --resource-group "%ResourceGroup_name%"

REM create SQL database
call az sql db create --name  "db-teamname-%Environment_name%" --resource-group "%ResourceGroup_name%" --server "sqlserver-teamname-%Environment_name%"

call az sql server update --resource-group "%ResourceGroup_name%" --name "sqlserver-TeamName-%Environment_name%" --admin-password "Gourav@123"

REM Allow access to Azure services
call az sql server firewall-rule create --resource-group "%ResourceGroup_name%" --server "sqlserver-teamname-%Environment_name%" --name "azureservices" --start-ip-address "0.0.0.0" --end-ip-address "0.0.0.0"

REM set firewall rule to allow azure resources access the database
az sql server firewall-rule create --name "azureservices-1" --start-ip-address 0.0.0.0 --end-ip-address 0.0.0.0 --server "sqlserver-teamname-%Environment_name%" --resource-group "%ResourceGroup_name%"



