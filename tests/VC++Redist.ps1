$result = "Inconclusive"
$summary = ""

If (Test-Installed -Like "Microsoft Visual C++ * Redistributable *") {
  $result = "Pass"
} Else {
  $result = "Fail"
  $summary = "Not found/installed"
}

Out-TestResult "Visual C++ Redistributable" $result $summary