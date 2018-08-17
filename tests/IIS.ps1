$result = "Inconclusive"
$summary = ""

$iisKey = Get-ItemProperty "HKLM:\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\InetStp" -ErrorAction SilentlyContinue | Select-Object VersionString, MajorVersion, MinorVersion

If ($iisKey -ne $null) {
  $iisVersion = [version]"$($iisKey.MajorVersion).$($iisKey.MinorVersion)"
  If ($iisVersion -ge [version]"8.5") {
    $result = "Pass"
    $summary = "Found IIS v$($iisVersion)"
  } Else {
    $summary = "Unsupported IIS version: $($osVersion)"
  }
} Else {
  $result = "Fail"
  $summary = "Not found/installed"
}

Out-TestResult "IIS 8.5/10.0" $result $summary