function New-ResponseTransportationMode {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTransportationMode' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTransportationMode -ArgumentList @(
        )
    }
}
