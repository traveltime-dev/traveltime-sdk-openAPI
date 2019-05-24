function New-ResponseDistanceBreakdownItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTransportationMode]
        ${mode},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${distance}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseDistanceBreakdownItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseDistanceBreakdownItem -ArgumentList @(
            ${mode},
            ${distance}
        )
    }
}
