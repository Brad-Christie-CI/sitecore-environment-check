# sitecore-environment-check
Validates an environment for Sitecore installation and outputs potential problems.

## Example Output

```
PS C:\GitHub\sitecore-environment-check> .\Test.ps1

Name                                         Summary                                         Result
----                                         -------                                         ------
IIS 8.5/10.0                                 Not found/installed                             Fail
.NET Framework v4.6.2 or later               Found v4.6.1586                                 Pass
Windows 8.1/10 or Windows Server 2012R2/2016 Found Windows Microsoft Windows NT 10.0.14393.0 Pass
IIS Rewrite Module                                                                           Fail
Visual C++ Redistributable                   Not found/installed                             Fail
IIS WebDeploy Module                                                                         Fail
```