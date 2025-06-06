param(
    $env:COMPUTERNAME
)
describe 'Check Server' {
    context 'Checking Windows Features'{
        it 'Making sure AD Domain Services is installed'{
            $DomainServices=Invoke-Command -Computername $ComputerName -scriptblock{
                Get-WindowsFeature -Name AD-Domain-Services
            }
        }
            $DomanServices.Installed | should be $true
    }
    context 'Checking Windows Services'{
        it 'Making Sure Windows Update Service is running'{
            $UpdateService=Invoke-Command -ComputerName $env:COMPUTERNAME -scriptblock{
                Get-Service -DisplayName 'Windows Update'
            }
            $UpdateService.status | should be "Running"
        }
    }
}