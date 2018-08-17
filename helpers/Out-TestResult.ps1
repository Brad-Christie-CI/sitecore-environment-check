Function Out-TestResult {
  Param(
    [Parameter(Position = 1, Mandatory = $true)]
    [string]$Name
    ,
    [Parameter(Position = 2, Mandatory = $true)]
    [ValidateSet("Pass", "Fail", "Inconclusive")]
    [string]$Result
    ,
    [Parameter(Position = 3)]
    [string]$Summary = $null
  )
  Process {
    $obj = New-Object PSObject
    $obj | Add-Member NoteProperty "Name" $Name
    $obj | Add-Member NoteProperty "Summary" $Summary
    $obj | Add-Member NoteProperty "Result" $Result
    $obj
  }
}