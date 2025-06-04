Set-StrictMode -Version Latest

function Create-Configuration{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory,ValueFromPipeline)]
        [string] $Name,
    
        [Parameter()]
        [ValidateSet("1","2")]
        [string] $Version="1"
        
    )

    begin{
        "Creating Configuration file with the name"
    }

    process{
        Write-Output "Creating Configuration file with the name : $Name at version : $Version ..."
    }

    end{
        "Creating Configuration file with the name"
    }

}

$Names=@("Test1", "Test2", "Test3")

$Names | Create-Configuration -Version "2"

