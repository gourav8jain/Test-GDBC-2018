REM create resource group
call az group create --name "xjg-rg-sampleapp-12-06" --location "West Europe"

REM create appservice plan
call az appservice plan create -g "xjg-rg-sampleapp-12-06" -n "xjg-app-sampleapp-12-06" --sku F1

REM create azurewebapp 
call az webapp create -g "xjg-rg-sampleapp-12-06" -p "xjg-app-sampleapp-12-06" -n "xjg-webapp-sampleapp-12-06"
