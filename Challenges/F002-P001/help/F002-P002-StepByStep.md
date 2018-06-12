# Step By Step: Setup Private Build Agent #

1. You will need a Personal Access Token to authenticate the agent to VSTS. Follow the instructions found here to create a token: https://docs.microsoft.com/en-gb/vsts/pipelines/agents/prepare-permissions?view=vsts
1. Open a remote desktop connection to your claimed Virtual Machine.
1. Open a powershell window and create a new folder for the agent.
    ```
    mkdir agent 
    cd agent
    ```
1. Download the agent from https://vstsagentpackage.azureedge.net/agent/2.134.2/vsts-agent-win-x64-2.134.2.zip and save it to the default downloads location

    Create the agent using the following command:
    ```
    Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$HOME\Downloads\vsts-agent-win-x64-2.134.2.zip", "$PWD")
    ```
1. Configure the agent by running the config tool
    ```
    .\config.cmd
    ```
   * Enter the VSTS server url for your team `https://globaldevopsbootcamp.visualstudio.com`
   * Press enter to select PAT authentication
   * Enter the PAT token you generated at the start of this step-by-step
   * When asked for the agent pool, use your team name.
   * Press enter for the default agent name
   * Press enter for the default working folder
   * Choose Y to run the agent as a service
   * Press enter to set the default Network Service account
     