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
    [string]$Description = $null
  )
  Process {
    $obj = New-Object PSObject
    $obj | Add-Member NoteProperty "Name" $Name
    $obj | Add-Member NoteProperty "Result" $Result
    $obj | Add-Member NoteProperty "Description" $Description
    $obj
  }
}