$netKey = Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full\" -ErrorAction SilentlyContinue | Select-Object Version
If ($null -ne $netKey) {
  $netVersion = [version]$netKey.Version
  If ($netVersion -ge [version]"4.6.2") {
    Out-TestResult ".NET Framework" "Pass" ".NET Framework v$($netVersion) installed"
  } Else {
    Out-TestResult ".NET Framework" "Fail" "Must have .NET Framework v4.6.2 or later installed"
  }
} Else {
  Out-TestResult ".NET Framework" "Fail" "Must have .NET Framework v4.6.2 or later installed"
}