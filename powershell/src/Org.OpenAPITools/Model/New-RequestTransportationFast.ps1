function New-RequestTransportationFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTransportationFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTransportationFast -ArgumentList @(
            ${type}
        )
    }
}
