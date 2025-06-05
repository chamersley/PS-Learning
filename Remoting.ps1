hostname

$TestBlock={ Write-Host "This is a script-block" }

& $TestBlock

Invoke-Command -ComputerName AAA2KC2J64 -FilePath C:\Users\chamersley\Documents\GetHostName.ps1

Invoke-Command -ComputerName AAA2KC2J64 -ScriptBlock { Write-Host "This is running on $(hostname)" }

$SomeVariable="This is a local variable"


Invoke-Command -ComputerName AAA2KC2J64 -ScriptBlock { 
    Write-Host "This is running on $(hostname) and $($args[0])" } -ArgumentList $SomeVariable

Invoke-Command -ComputerName AAA2KC2J64 -ScriptBlock { 
    Write-Host "This is running on $(hostname) and $($args[0])" }

Invoke-Command -ComputerName AAA2KC2J64 -ScriptBlock { 
    $test="This is running on $(hostname) and $($args[0])" Write-Host $test }

New-PSSession -ComputerName AAA2KC2J64 

$Session=Get-PSSession -ComputerName AAA2KC2J64

$Session

Invoke-Command -Session $Session -Script-Block {
    $test="This is running on $(hostname) and $($args[0])" Write-Host $test 
}

Invoke-Command -Session $Session -ScriptBlock {
    Write-Host $test
}

Disconnect-PSSession -Session $Session

Get-PSSession | Disconnect-PSSession | Remove-PSSession