@{
    # Script module or binary module file associated with this manifest
    ModuleToProcess = 'ResourcesHelper.psm1'
    
    # Version number of this module.
    ModuleVersion = '1.0.0.0'
    
    # ID used to uniquely identify this module
    GUID = '{49736F81-E71A-46DE-9F38-D493346F5F4F}'
    
    # Author of this module
    Author = 'Trados Appstore Team'
    
    # Company or vendor of this module
    CompanyName = 'SDL Limited as part of the RWS Holdings Plc group of companies'
    
    # Copyright statement for this module
    Copyright = '© 2011 - 2022 SDL Limited as part of the RWS Holdings Plc group of companies (\"RWS Group\").'
    
    # Description of the functionality provided by this module
    Description = 'A PowerShell module to list resources from the Language Cloud'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '7.4'
    
    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = '2.0'
    
    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = '2.0.50727'
    
    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture = 'None'
    
    # Modules that must be imported into the global environment prior to importing
    # this module
    RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to
    # importing this module
    ScriptsToProcess = @()
    
    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @()
    
    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @()
    
    # Modules to import as nested modules of the module specified in
    # ModuleToProcess
    NestedModules = @()
    
    # Functions to export from this module
    FunctionsToExport = '*'
    
    # Cmdlets to export from this module
    CmdletsToExport = '*'
    
    # Variables to export from this module
    VariablesToExport = '*'
    
    # Aliases to export from this module
    AliasesToExport = '*'
    
    # List of all modules packaged with this module
    ModuleList = @()
    
    # List of all files packaged with this module
    FileList = @(
        '.\ResourcesHelper.psm1'
        '.\ResourcesHelper.psd1'
    )
    
    # Private data to pass to the module specified in ModuleToProcess
    PrivateData = ''
    }