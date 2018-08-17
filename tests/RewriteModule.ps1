If (Test-Installed -Like "IIS URL Rewrite Module *") {
  Out-TestResult "WebDeploy Module" "Pass" "Rewrite module installed"
} Else {
  Out-TestResult "WebDeploy Module" "Fail" "Must have Rewrite module installed"
}