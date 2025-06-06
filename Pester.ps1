Invoke-Pester -Script (.'C:\users\chamersley\documents\ADDS-UnitTest.ps1' -ComputerName ihwanglpt1)

$ScriptParameters=@{
path='C:\users\chamersley\documents\ADDS-UnitTest.ps1'
Parameters=@{
    ComputerName='ihwanglpt1'
}
}

$ScriptParameters

Invoke-Pester -Script $ScriptParameters -OutputFile c:\youtube.xml -OutputFormat NUnitXml