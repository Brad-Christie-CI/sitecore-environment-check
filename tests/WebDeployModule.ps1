If (Test-Installed -Like "IIS URL Rewrite Module *") {
  Out-TestResult "WebDeploy Module" "Pass" "WebDeploy module installed"
} Else {
  Out-TestResult "WebDeploy Module" "Fail" "Must have WebDeploy module installed"
}