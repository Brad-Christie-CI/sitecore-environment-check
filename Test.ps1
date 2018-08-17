Get-ChildItem ".\helpers\*.ps1" | ForEach-Object { . $_ }

Get-ChildItem ".\tests\*.ps1" | ForEach-Object { & $_ }