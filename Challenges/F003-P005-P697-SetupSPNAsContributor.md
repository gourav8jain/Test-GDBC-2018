---
code: TT1J5AX6
effort: 5
bonus: true
required: 
type: Product Backlog Item 
---
# Set up the Service Principals for the pipeline #

## Description ##
To ensure no single manual action is performed on production, users are only given reader rights. They can use the playground or development environments to experiment and create automation scripts. When moving to productions, all deployment actions must be automated. To execute these actions, the pipeline uses a Service Principal that has elevated rights. The credentials for this SPN are unknown to the teams and can only be used within the pipeline. 

### Achievement ###
In this achievement, we will create the Service Principal and get the credentials for this Service Principal in an automated fashion. We will use this SPN in a later achievement so keep these credentials somewhere safe!

## Acceptance Criteria ##
* Service Principal (Teamname-VSTS) has been created.
* Service Principals has been granted Contributor access to all Resource Groups (Playground, Test, Production)
* Automation Script to perform above actions

## Links ##
- https://docs.microsoft.com/en-us/powershell/azure/create-azure-service-principal-azureps?view=azurermps-5.7.0
- https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest
