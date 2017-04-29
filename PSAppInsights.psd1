﻿#
# Module manifest for module 'PSApplicationInsights'
# Generated by: Jos Verlinde
# Generated on: 17-10-2016
#

@{
    # Script module associated with this manifest.
    RootModule = 'PSAppInsights'
    ModuleVersion = '0.9.2.4'

    # ID used to uniquely identify this module
    GUID = '1706beeb-bb2f-4a51-b1fd-f972e62f4d2d'

    # Author of this module
    Author = 'Jos Verlinde [MSFT]'
    CompanyName = 'Microsoft'
    Copyright = '(c) 2016-2017 Jos Verlinde. All rights reserved.'
    Description = 'Add Application Insights to PowerShell to get both simple and advanced tracing to gain insight to how your scripts are actually working, including errors and functional usage'

    # AppInsights Module is dependent on .Net 4.5
    DotNetFrameworkVersion = '4.5'

    # not tested on anyting lower than 4.0
    PowerShellVersion = '4.0'

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @(  
        #Application Insights Dlls that are needed for the exposed functionality 
        #base AI Service 
        '.\Microsoft.ApplicationInsights.2.3.0\lib\net45\Microsoft.ApplicationInsights.dll',
        #AI For fat clients 
        '.\Microsoft.ApplicationInsights.WindowsServer.2.3.0\lib\net45\Microsoft.AI.WindowsServer.dll',
        '.\Microsoft.ApplicationInsights.WindowsServer.TelemetryChannel.2.3.0\lib\net45\Microsoft.AI.ServerTelemetryChannel.dll', 
        #AI based on perfcounters 
        '.\Microsoft.ApplicationInsights.PerfCounterCollector.2.3.0\lib\net45\Microsoft.AI.PerfCounterCollector.dll',
        # Tracking of dependencies 
        '.\Microsoft.ApplicationInsights.DependencyCollector.2.3.0\lib\net45\Microsoft.AI.DependencyCollector.dll',
        '.\Microsoft.ApplicationInsights.Agent.Intercept.2.0.7\lib\net45\Microsoft.AI.Agent.Intercept.dll',
        #And the additional powershell modules
        # Send Base event types 
        '.\AIEvent.psm1',
        '.\AITrace.psm1',
        '.\AIMetrics.psm1',
        # Exceptions and errors 
        '.\AIException.psm1',   
        # Waiting for dependencies                 
        '.\AIDependency.psm1',
        #perf Counter 
        '.\AIPerformanceCollector.psm1',
        #Live perf counters 
        '.\LiveMetrics.psm1',

    #   '.\AIOperation.psm1',
        '.\HelperFunctions.psm1'
    )

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = '*'

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = '*'

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = '*'


    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('Tracing','ApplicationInsights','Monitoring','DevOps')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/Josverl/Connect-O365/raw/master/License'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/Josverl/PSAppInsights'
            # A URL to an icon representing this module.
            IconUri = 'https://raw.githubusercontent.com/Josverl/PSAppInsights/master/Images/PSAI.png'

            # ReleaseNotes of this module
        ReleaseNotes = @"
V0.9.2.3 Silently fail if client has not been initialised, to allow adding  SEND-AI* statements withouth the need to remove them to avoid dependencies
V0.9.2   Improve Stacklogging, Send-AIException, 
v0.9.1   Add -Stackwalk to allow Wrapping of a Log function and still allow correct reporting of the calling function -StackWalk 1 
V0.9.0.2 Add -Developer Mode and -Sending interval to control how quick to send the information to AI
V0.9     Upgrade to ApplicationInSights 2.3.0, fix dependency load on Windows 10
V0.8.1   Code cleanup and cosmetics
V0.8.1   Default operation is name of calling Powershell script
V0.8     Integrate multiple different Features.
V0.7.4   Upgrade to ApplicationInSights 2.2.0 
V0.7.3   Add support to report Powershell call stack
V0.7.2   Add Convertto-hashtable
V0.7     Add Collection of Performance Counters, Update to PSGallery
V0.6.2   Add caller's script or module version information to start-AISession
V0.6.1   Automatically add caller information on new Session (Script,  Line Number )
V0.6.0.2 Resolve naming collision for get-hash 
V0.5     initial publication 
"@                         

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''



}

