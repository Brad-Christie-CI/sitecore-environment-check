$result = "Inconclusive"
$summary = ""

If (Test-Installed -Like "Microsoft Web Deploy *") {
  $result = "Pass"
} Else {
  $result = "Fail"
}

Out-TestResult "IIS WebDeploy Module" $result $summary