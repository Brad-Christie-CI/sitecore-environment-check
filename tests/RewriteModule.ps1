$result = "Inconclusive"
$summary = ""

If (Test-Installed -Like "IIS URL Rewrite Module *") {
  $result = "Pass"
} Else {
  $result = "Fail"
}

Out-TestResult "IIS Rewrite Module" $result $summary