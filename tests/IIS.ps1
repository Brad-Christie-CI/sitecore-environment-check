$iisKey = Get-ItemProperty "HKLM:\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\InetStp" -ErrorAction SilentlyContinue | Select-Object VersionString, MajorVersion, MinorVersion

If ($iisKey -ne $null) {
  $iisVersion = [version]"$($iisKey.MajorVersion).$($iisKey.MinorVersion)"
  If ($iisVersion -ge [version]"8.5") {
    Out-TestResult "IIS" "Pass" "IIS $($iisVersion) installed"
  } Else {
    Out-TestResult "IIS" "Inconclusive" "Unsupported IIS version installed, $($osVersion)"
  }
} Else {
  Out-TestResult "IIS" "Fail" "Must have IIS 8.5/10 installed"
}