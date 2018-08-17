$result = "Inconclusive"
$summary = ""

$netKey = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\" -ErrorAction SilentlyContinue | Select-Object Version
If ($null -ne $netKey) {
  $netVersion = [version]$netKey.Version
  If ($netVersion -ge [version]"4.6.2") {
    $result = "Pass"
    $summary = "Found v$($netVersion)"
  } Else {
    $result = "Fail"
    $summary = "Unsupported .NET Framework: v$($netVersion)"
  }
} Else {
  $summary = "Not found/installed"
}

Out-TestResult ".NET Framework v4.6.2 or later" $result $summary