# Server 2016            10.0*
# Server 2012 R2 (64)    6.3*
# Windows 10 (32/64)     10.0*
# Windows 8.1 (32/64)    6.3*

$result = "Inconslusive"
$summary = ""

$osVersion = [System.Environment]::OSVersion
$verString = "$($osVersion.Version.Major).$($osVersion.Version.Minor)"
If ($verString -eq "10.0" -or $verString -eq "6.3") {
  $result = "Pass"
  $summary = "Found Windows $($osVersion.VersionString)"
} Else {
  $result = "Fail"
  $summary = "Unsupported OS $($osVersion.VersionString)"
}

Out-TestResult "Windows 8.1/10 or Windows Server 2012R2/2016" $result $summary