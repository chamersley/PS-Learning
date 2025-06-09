$CSVFilePath="D:\DATA\Employee1.csv"

Get-Content -Path $CSVFilePath

$EmployeeData=Import-CSV -Path $CSVFilePath -Delimiter ','

foreach($Employee in $EmployeeData){
    Write-Host "$($Employee.FirstName) $($Employee.LastName) has date of birth of $($Employee.DOB)"
}

Get-Service | Select-Object -Property Status,Name,DisplayName,@{Name="Time";Expression={Get-Date -Format 'MM-dd-yy hh:mm:ss'}} | Export-CSV -Path G: -Delimiter ',' -NoTypeInformation