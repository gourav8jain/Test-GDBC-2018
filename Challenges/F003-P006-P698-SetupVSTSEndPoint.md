---
code: PAUQIX2B
effort: 5
bonus: true
required: 
type: Product Backlog Item 
---
# Create a secure connection to Azure from Visual Studio Team Service #

## Description ##
To ensure a secure deployment to your Azure Resource Groups, a Service Principal has been created. In order to use this SPN (Service Principal) in your pipeline, a VSTS Service EndPoint must be created, that stores the credentials securely in VSTS and allows others to use this connection without knowing the security details.

### Achievement ###
In this achievement, you will create the Service EndPoints in VSTS for all resource groups you created. You will create 3 endpoints. One for deployment to the Playground, one for Test and one for Production.

## Acceptance Criteria ##
* Service EndPoint created in your VSTS Project for deployment in all resource groups
* Create the VSTS EndPoint with a script

## Links ##
- https://docs.microsoft.com/en-us/vsts/build-release/concepts/library/service-endpoints?view=vsts
- http://blog.xebia.com/create-an-azure-service-principal-and-a-vsts-arm-endpoint/

## To do ##
* [X] Links to create an endpoint
* [ ] Script to create a Service EndPoint in VSTS
* [ ] Step by step




