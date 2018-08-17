# Server 2016            10.0*
# Server 2012 R2 (64)    6.3*
# Windows 10 (32/64)     10.0*
# Windows 8.1 (32/64)    6.3*

$osVersion = [System.Environment]::OSVersion.Version
$verString = "$($osVersion.Major).$($osVersion.Minor)"
If ($verString -eq "10.0" -or $verString -eq "6.3") {
  Out-TestResult "OS" "Pass" "Windows $($osVersion) installed"
} Else {
  Out-TestResult "OS" "Fail" "Unsupported OS $($osVersion), expecting Windows 8.1/10 or Windows Server 2012R2/2016"
}