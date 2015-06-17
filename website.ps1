Configuration WebSite
{
    param
    (
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [String[]]$NodeName,
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [String]$WebSiteName
    )   

    Import-DscResource -ModuleName xWebAdministration

    Node $NodeName
    {
        WindowsFeature IIS
        {
            Ensure = "Present" 
            Name = "Web-Server"  
        }

        WindowsFeature ASPNET
        {
            Ensure = 'Present'
            Name = 'Web-Asp-Net45'
            DependsOn = '[WindowsFeature]IIS'
        }

        File WebSiteDirectory
        {
            Ensure = 'Present'
            Type = 'Directory'
            DestinationPath = 'C:\inetpub\'+$WebSiteName           
        }

        xWebsite WebSite
        {
            Ensure = 'Present'
            Name = $WebSiteName
            DependsOn = '[WindowsFeature]IIS'
            State = 'Started'            PhysicalPath = 'C:\inetpub\'+$WebSiteName   
        }
    }
} 