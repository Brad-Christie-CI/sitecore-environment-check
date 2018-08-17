Function Test-Installed
{
  [CmdletBinding(DefaultParameterSetName = "Exact")]
  Param(
    [Parameter(ParameterSetName = "Exact", Mandatory = $true, Position = 1, HelpMessage = "Find installed applications matching exactly")]
    [ValidateNotNullOrEmpty()]
    [string]$Exact,

    [Parameter(ParameterSetName = "Like", Mandatory = $true, Position = 1, HelpMessage = "Find installed applications matching a pattern")]
    [ValidateNotNullOrEmpty()]
    [string]$Like
  )
  Process {
    $Path = @("HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*")
    if ([Environment]::Is64BitOperatingSystem) {
      $Path += "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
    }

    $null -ne (Get-ItemProperty $path | Where-Object { $_.DisplayName -and $_.UninstallString } | Where-Object {
      If ($PSCmdlet.ParameterSetName -eq "Exact") {
        $_.DisplayName -eq $Exact
      } Else {
        $_.DisplayName -like $Like
      }
    })
  }
}