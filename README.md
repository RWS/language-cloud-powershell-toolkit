# Language Cloud Powershell Toolkit
## Introduction
The Language Cloud PowerShell Toolkit integrates with [Language Cloud](https://languagecloud.sdl.com/lc/api-docs/) enabling users to script and automate actions using the publicly available APIs. The purpose of this toolkit is to automate project creation and retrieve essential resources through the PowerShell console.

For detailed guidance and information on available endpoints, please refer to the [API Documentation](https://languagecloud.sdl.com/lc/api-docs/authentication).

## Table of Contents
<details>
  <summary>Expand</summary>

  - [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Configuring and running the Sample Roundtrip script](#configuring-and-running-the-sample-roundtrip-script)
  - [Importing and Using PowerShell Modules](#importing-and-using-powershell-modules)
  - [Accessing Module Documentation](#accessing-module-documentation)
  - [Authentication](#authentication)
  - [Retrieve Your Client ID, Client Secret, and Tenant ID](#retrieve-your-client-id-client-secret-and-tenant-id)
  - [Function Documentation](#function-documentation)
  - [Ensuring File Permissions for Toolkit Files](#ensuring-file-permissions-for-toolkit-files)
  - [Contribution](#contribution)
  - [Issues](#issues)
  - [Changes](#changes)
</details>

## Getting Started
To run the scripts, ensure you have the following:

- **PowerShell Version 7.4 or Higher**  
    If you need to install PowerShell 7.4, follow the instructions provided [here](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-windows).

- **Language Cloud License**  
    Ensure you have access to a Language Cloud account, as the scripts will interact with the Language Cloud API for various operations.

## Installation
### **1. Using the MSI Installer**
For a quicker and more streamlined installation, you can use the MSI installer. This method automates the entire process, saving you time and ensuring all necessary files are placed in the correct locations.

1. **Download the MSI Installer**
    - Download the MSI installer from the [official releases page](https://github.com/RWS/language-cloud-powershell-toolkit/releases).

2. **Run the MSI Installer**
    - Double-click the downloaded MSI file to begin the installation process.
    - Follow the on-screen prompts to install the toolkit. The installer will automatically place the necessary scripts and modules in the correct directories.
3. **Verify Installation**
    - After the installation is complete, verify that the toolkit has been correctly installed by checking the installation path.

### **2. Manual Installation**
If you prefer to manually install the toolkit, follow these steps:

1. Download the Files
    - Ensure you have downloaded all necessary files for the toolkit, including the sample roundtrip scripts and PowerShell modules. These files are available at the [official releases page](https://github.com/RWS/language-cloud-powershell-toolkit/releases). Be sure to download the latest release to ensure you have the most up-to-date version of the toolkit.
    - After downloading, you may need to unblock the zip file. For instructions on how to unblock files, see [Ensuring File Permissions for Toolkit Files](#ensuring-file-permissions-for-toolkit-files).
2. Create Required Folders
    - Create the following folders if they do not already exist:
        - `C:\users\{your_user_name}\Documents\Powershell`
        - `C:\users\{your_user_name}\Documents\Powershell\Modules`
3. Copy Sample Roundtrip Script
    - Copy the `Sample_Roundtrip.ps1` scripts into the `Powershell` folder.
    - Ensure these files are placed directly in `C:\Users\{your_user_name}\Documents\Powershell`.
4. Copy PowerShell Modules
    -   Copy the PowerShell modules into the `Modules` folder:
        -   `...\Powershell\Modules\AuthenticationHelper`
        -   `...\Powershell\Modules\ResourcesHelper`
        -   `...\Powershell\Modules\ProjectHelper`
        -   `...\Powershell\Modules\UsersHelper`
        -   `...\Powershell\Modules\TerminologyHelper`
    - Ensure each module folder contains its respective `.psd1` and `.psm1` files.
5. Verify File Locations
    - Confirm the locations of the files:
        - The roundtrip script should be in `C:\Users\{your_user_name}\Documents\Powershell`.
        - Modules should be in `C:\Users\{your_user_name}\Documents\Powershell\Modules` with appropriate subfolders for each module.

## Configuring and running the Sample Roundtrip script.
### Configuring the Sample Roundtrip
To configure the roundtrip scripts, you need to provide specific authentication details, including the **Client ID**, **Client Secret**, and **Tenant ID**. Follow the steps below to obtain and populate these values.

1. **Retrieve Your Client ID, Client Secret, and Tenant ID:** For detailed instructions on how to obtain your Client ID, Client Secret, and Tenant ID, refer to the [Retrieve Your Client ID, Client Secret, and Tenant ID](#retrieve-your-client-id-client-secret-and-tenant-id) section. Follow the steps in that section to gather these values.

3. **Update the Script**: After obtaining your Client ID, Client Secret, and Tenant ID, update the script with the retrieved values.
    ```powershell
        # Define the client ID, client secret, and tenant ID for authentication
        $clientId = "YOUR_CLIENT_ID"          # Change this with your actual client ID
        $clientSecret = "YOUR_CLIENT_SECRET"  # Change this with your actual client secret
        $lcTenant = "YOUR_TENANT_ID"          # Change this with your actual tenant ID
    ```

### Running the Sample Roundtrip script.
This section assumes that you have already configured the `Sample_Roundtrip.ps1` script and set up your environment as described in the previous sections. To run the script, follow these steps:
1. Open PowerShell 7.4 or Higher
    - Launch PowerShell 7.4 or a later version.
2. Set the Execution Policy (If Needed)
    -  If you haven’t unblocked the files as described in the [Ensuring File Permissions](#ensuring-file-permissions-for-toolkit-files) for Toolkit Files section, you may need to set the execution policy to Unrestricted to allow script execution. Execute the following command:
        ```powershell
        Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
        ```
    - This command permits PowerShell script execution without requiring local Windows admin privileges and should be executed once per machine and user profile. Note: If you have already unblocked the files, setting the execution policy may not be necessary.
3. Navigate to the Script Location
    - Use the `cd` command to change your directory to the location where the `Sample_Roundtrip.ps1` script is saved:
      ```powershell
      cd C:\Users\{your_user_name}\Documents\Powershell
      ```
4. Run the Script
    - Execute the script using the following command
      ```powershell
      .\Sample_Roundtrip.ps1
      ```

## Importing and Using PowerShell Modules
Before using the functions provided by the modules, you need to ensure they are correctly imported into your PowerShell session. This section outlines the steps to import the modules based on their availability in your environment.

### Importing Modules
1. Check Module Availability
    - Use the `Get-Module` command to verify if the required modules are available in your PowerShell environment:
      ```powershell
      Get-Module -ListAvailable -Name AuthenticationHelper, ProjectHelper, ResourcesHelper, UsersHelper
      ```
    - If the modules are listed, they are available in the environment path.
2. Import Modules from Environment Path
   -  If the modules are available in the environment path, you can import them directly by name. For example:
      ```powershell
      Import-Module -Name AuthenticationHelper
      Import-Module -Name ProjectHelper 
      Import-Module -Name ResourcesHelper 
      Import-Module -Name UsersHelper 
      Import-Module -Name TerminologyHelper 
      ```
3. Import Modules from Specific Path
    - If the modules are not available in the environment path, you will need to import them from their specific location. Use the full path to the module when importing. For example:
      ```powershell
      Import-Module -Name "C:\Users\{your_user_name}\Documents\Powershell\Modules\AuthenticationHelper"
      Import-Module -Name "C:\Users\{your_user_name}\Documents\Powershell\Modules\ProjectHelper" 
      Import-Module -Name "C:\Users\{your_user_name}\Documents\Powershell\Modules\ResourcesHelper"
      Import-Module -Name "C:\Users\{your_user_name}\Documents\Powershell\Modules\UsersHelper"
      Import-Module -Name "C:\Users\{your_user_name}\Documents\Powershell\Modules\TerminologyHelper"
      ```

#### Permanently Add the Module Path to `$env:PSModulePath`
If you want to add the module path permanently so that it remains available across PowerShell sessions and system reboots, follow these steps:
1. Open PowerShell 7 as Administrator
    - Right-click on the PowerShell 7 icon and select *"Run as administrator."*
2. Add the Directory to the Environment Variable
    - Execute the following commands to add your module path to the $env:PSModulePath environment variable:
        ```powershell
        $modulePath = "C:\Users\{Your_username}\Documents\Powershell\Modules"
        [System.Environment]::SetEnvironmentVariable("PSModulePath", "$env:PSModulePath;$modulePath", [System.EnvironmentVariableTarget]::User)
        ```
    - Replace `{Your_username}` with your actual username.
3. Confirm the Path Has Been Added Permanently
    - To verify that the path has been successfully added, run:
        ```powershell
        $env:PSModulePath
        ```
    - You should see your new path included in the output.

    **Note: If you installed the toolkit using the MSI installer, the installation path should already be automatically added to your environment path, and you won’t need to manually add it.**

### Using the Modules 
Once the modules are imported, you can start using their functions in PowerShell 7. Each module provides specific cmdlets and functions that you can call directly in your session. For example:
  - List available functions in a module:
    ```powershell
    Get-Command -Module AuthenticationHelper
    ```
  - Run a function from a module:
    ```powershell
    Get-AccessKey -id "{your-client-id}" -secret "{your-client-secret}" -lctenant "{your-lctenant}" 
    ```
    Replace `Get-AccessKey` with any cmdlet or function provided by the module you wish to use. Consult the module's documentation or use `Get-Help` for details on available functions.

## Accessing Module Documentation
The toolkit has been documented with `Get-Help` to provide detailed information on the available cmdlets and functions. Follow these steps to access the documentation:
1. Ensure Modules Are Loaded
    - Before accessing the help documentation, make sure that the necessary modules are imported into your PowerShell 7 session. You can do this by running:
        ```powershell
        Import-Module -Name AuthenticationHelper
        Import-Module -Name ProjectHelper
        Import-Module -Name ResourcesHelper
        Import-Module -Name UsersHelper
        ```
    If modules are not in the environment path, use the full path for importing as needed.

2. Access Documentation
    - Once the modules are loaded, you can use `Get-Help` to access the documentation for any cmdlet or function provided by the module. For example:
      ```powershell
      Get-Help Get-AccessKey
      ```
    - Replace `Get-AccessKey` with the name of the cmdlet or function you want to learn more about.

3. Explore Additional Help Topics
    - To view a list of available cmdlets and functions in a module, use:
        ```powershell
        Get-Command -Module AuthenticationHelper
        ```
    - For more detailed information on each cmdlet or function, including examples and parameter descriptions, use:
        ```powershell
        Get-Help <Function-Name> -Detailed
        ```
      or  
        ```powershell
        Get-Help <Function-Name> -Examples
        ```

By using `Get-Help`, you can access comprehensive documentation and examples for all the functions available in the toolkit, aiding you in effectively utilizing the provided modules.

## Authentication
The `Get-AccessKey` function is the starting point of the toolkit. It is responsible for making the request to retrieve the authentication token, using the Client ID, Client Secret, and Tenant ID. Once the token is retrieved, it is converted into a PowerShell object, which can be used for subsequent API calls within the toolkit.

To minimize the number of requests made, the authentication details are stored in a JSON file within the AuthenticationHelper module. If the same tenant and client ID are used, and the token has not expired, the stored details will be reused. Otherwise, the token will be refreshed, and the content in the JSON file will be overwritten.

You can call the `Get-AccessKey` method with your **Client ID**, **Client Secret**, and **Tenant ID** to retrieve the access token. Once the token is retrieved, you can proceed with all other available methods in the toolkit.

For instructions on how to retrieve your Client ID, Client Secret, and Tenant ID, refer to the [Retrieve Your Client ID, Client Secret, and Tenant ID](#retrieve-your-client-id-client-secret-and-tenant-id) section.

## Retrieve Your Client ID, Client Secret, and Tenant ID
To integrate with RWS Trados Enterprise, you'll need your Client ID, Client Secret, and Tenant ID. Follow these instructions to obtain them:

1. **Retrieve Your Client ID and Client Secret:** To obtain your Client ID and Client Secret, follow these instructions:
    - **Log in** to the RWS Trados Enterprise web UI as a human Administrator user. If you do not have administrator access, contact your administrator for assistance.
    - **Expand the account menu** in the top right corner and select Integrations.
    - Navigate to the **Applications** sub-tab.
    - Click on **New Application** and enter the following information:
        - **Name**: Enter a unique name for your custom application.
        - **(Optional) URL**: Enter your custom application URL.
        - **(Optional) Description**: Enter any relevant details.   
        - **Service User**: Select a service user from the dropdown.
    - Click **Add**.
    - Back in the **Applications** sub-tab, select the checkbox corresponding to your application and then click **Edit**.
    - On the **Overall Information** page, you can change any of the following if necessary: name, URL, or description.
    - On the **WebHooks** page:
        - Enter a default callback URL for your application Webhooks (all Webhooks defined in RWS Language Cloud).
        - Enter a value for **Webhook URL** (this is your Webhook endpoint URL that RWS Language Cloud will call).
        - Select one or more event types and hit Enter. You can create a separate webhook for every event you are interested in or combine notifications for multiple event types into one webhook.
        - Note that if you delete your application, all its associated webhooks will also be deleted.
    - Finally, navigate to the **API Access** page to retrieve your **Client ID** and **Client Secret**.
2. **Retrieve Your Tenant ID:**
    - Navigate to the **Users** section in the RWS Trados Enterprise web UI.
    - Select **Manage Account**
    - Copy your **Trados Account ID**. This ID serves as your **Tenant ID**

## Function Documentation
This section provides detailed documentation for the functions included in the PowerShell script modules.

| Function Name	| Description | Module |
| ------ | --------- | ------  |
| `Get-AccessKey`                            | Authenticates using the provided client ID, secret, and tenant ID, and returns an object containing the access token and tenant necessary for making API calls. | `AuthenticationHelper` |
| `New-Project`                              | Creates a new project                                                      | `ProjectHelper`   |
| `Get-AllProjects`                          | Retrieves all projects.                                                    | `ProjectHelper`   |
| `Get-Project`                              | Retrieves a specifiec project.                                             | `ProjectHelper`   |
| `Get-AllProjectTemplates`                  | Retrieves all project templates.                                            | `ResourcesHelper` |
| `Get-ProjectTemplate`                      | Retrieves a specific project template.                                     | `ResourcesHelper` |
| `New-ProjectTemplate`                      | Creates a new project template.                                            | `ResourcesHelper` |
| `Remove-ProjectTemplate`                   | Deletes an existing project template.                                      | `ResourcesHelper` |
| `Update-ProjectTemplate`                   | Updates an existing project template based on specified configurations.     | `ResourcesHelper` |
| `Get-AllTranslationEngines`                | Retrieves all translation engines.                                          | `ResourcesHelper` |
| `Get-TranslationEngine`                    | Retrieves a specific translation engine.                                   | `ResourcesHelper` |
| `Get-AllCustomers`                         | Retrieves all customers.                                                   | `ResourcesHelper` |
| `Get-Customer`                             | Retrieves a specific customer.                                             | `ResourcesHelper` |
| `New-Customer`                             | Creates a new customer.                                                   | `ResourcesHelper` |
| `Remove-Customer`                          | Deletes an existing customer.                                             | `ResourcesHelper` |
| `Update-Customer`                          | Updates an existing customer.                                             | `ResourcesHelper` |
| `Get-AllWorkflows`                         | Retrieves all workflows.                                                   | `ResourcesHelper` |
| `Get-Workflow`                             | Retrieves a specific workflow.                                            | `ResourcesHelper` |
| `Get-AllPricingModels`                     | Retrieves all pricing models.                                             | `ResourcesHelper` |
| `Get-PricingModel`                         | Retrieves a specific pricing model.                                        | `ResourcesHelper` |
| `Get-AllScheduleTemplates`                 | Retrieves all schedule templates.                                          | `ResourcesHelper` |
| `Get-ScheduleTemplate`                     | Retrieves a specific schedule template.                                    | `ResourcesHelper` |
| `Remove-ScheduleTemplate`                  | Deletes an existing schedule template.                                     | `ResourcesHelper` |
| `Get-AllFileTypeConfigurations`            | Retrieves all file type configurations.                                    | `ResourcesHelper` |
| `Get-FileTypeConfiguration`                | Retrieves a specific file type configuration.                             | `ResourcesHelper` |
| `Get-AllLocations`                         | Retrieves all locations.                                                   | `ResourcesHelper` |
| `Get-Location`                             | Retrieves a specific location.                                            | `ResourcesHelper` |
| `Get-AllCustomFields`                      | Retrieves all custom fields.                                              | `ResourcesHelper` |
| `Get-CustomField`                          | Retrieves a specific custom field.                                        | `ResourcesHelper` |
| `Copy-TranslationMemory`                   | Copies an existing translation memory.                                     | `ResourcesHelper` |
| `Get-AllTranslationMemories`               | Retrieves all translation memories.                                        | `ResourcesHelper` |
| `Get-TranslationMemory`                    | Retrieves a specific translation memory.                                   | `ResourcesHelper` |
| `New-TranslationMemory`                    | Creates a new translation memory.                                         | `ResourcesHelper` |
| `Remove-TranslationMemory`                 | Deletes an existing translation memory.                                    | `ResourcesHelper` |
| `Update-TranslationMemory`                 | Updates an existing translation memory.                                    | `ResourcesHelper` |
| `Import-TranslationMemory`                 | Imports an existing file to an existing translation memory.                | `ResourcesHelper` |
| `Export-TranslationMemory`                 | Exports translation memory based on the source and target languages.       | `ResourcesHelper` |
| `Get-AllTranslationQualityAssessments`     | Retrieves all translation quality assessments.                             | `ResourcesHelper` |
| `Get-TranslationQualityAssessment`         | Retrieves a specific translation quality assessment.                       | `ResourcesHelper` |
| `Get-AllLanguageProcessingRules`           | Retrieves all language processing rules.                                   | `ResourcesHelper` |
| `Get-LanguageProcessingRule`               | Retrieves a specific language processing rule.                             | `ResourcesHelper` |
| `Get-AllFieldTemplates`                    | Retrieves all field templates.                                            | `ResourcesHelper` |
| `Get-FieldTemplate`                        | Retrieves a specific field template.                                      | `ResourcesHelper` |
| `Get-LanguagePair`                         | Maps one source language to multiple target languages for project/TM creation with multiple source-target pairs. | `ResourcesHelper` |
| `Get-AllUsers`       | Retrieves all users.                                 | `UsersHelper`    |
| `Get-User`           | Retrieves a specific user.                           | `UsersHelper`    |
| `Get-AllGroups`      | Retrieves all groups.                                | `UsersHelper`    |
| `Get-AllTermbases`          | Retrieves all termbases.                             | `TerminologyHelper`  |
| `Get-Termbase`              | Retrieves a specific termbase.                       | `TerminologyHelper`  |
| `New-Termbase`              | Creates a new termbase.                             | `TerminologyHelper`  |
| `Remove-Termbase`           | Deletes an existing termbase.                        | `TerminologyHelper`  |
| `Update-Termbase`           | Updates an existing termbase.                        | `TerminologyHelper`  |
| `Import-Termbase`           | Imports a termbase from a specified file.           | `TerminologyHelper`  |
| `Export-Termbase`           | Exports a termbase to a specified file.             | `TerminologyHelper`  |
| `Get-AllTermbaseTemplates`  | Retrieves all termbase templates.                    | `TerminologyHelper`  |
| `Get-TermbaseTemplate`      | Retrieves a specific termbase template.              | `TerminologyHelper`  |
| `Remove-TermbaseTemplate`   | Deletes an existing termbase template.               | `TerminologyHelper`  |
| `New-TermbaseTemplate`      | Creates a new termbase template.                     | `TerminologyHelper`  |
| `Update-TermbaseTemplate`   | Updates an existing termbase template.               | `TerminologyHelper`  |
| `Get-Field`                 | Formats fields for termbase and termbase templates creation/update. | `TerminologyHelper`  |

## Ensuring File Permissions for Toolkit Files

Windows may block files downloaded from the internet for security reasons. To ensure the toolkit functions properly, unblock the downloaded zip file.

### Step-by-Step Instructions

#### Locate the Downloaded File:
- Open File Explorer and navigate to the folder containing the downloaded file.

#### Right-Click on the File:
- Right-click on the file to open the context menu.

#### Open File Properties:
- Select "Properties" from the context menu. 

#### Unblock the File:
- In the Properties dialog, go to the "General" tab.
- Look for the message: "This file came from another computer and might be blocked to help protect this computer."
- If this message is present, check the box next to "Unblock."

#### Apply and Close:
- Click "Apply" to save the changes.
- Click "OK" to close the Properties dialog.

## Contribution
If you want to add a new functionality or you spot a bug please fill free to create a [pull request](https://www.codenewbie.org/blogs/how-to-make-a-pull-request) with your changes.

## Issues
If you find an issue you report it [here](https://github.com/RWS/language-cloud-powershell-toolkit/issues).

## Changes
### Version
#### v1.0.1.0
- Added an MSI installer for streamlined toolkit installation.

#### v1.0.0.0
- First Implementation of the Language Cloud PowerShell Toolkit
- Implemented key modules:
    - **AuthenticationHelper**: Manages authentication and token storage.   
    - **ProjectHelper**: Facilitates project-related operations.
    - **ResourcesHelper**: Handles resource management tasks.
    - **UsersHelper**: Supports user-related operations.