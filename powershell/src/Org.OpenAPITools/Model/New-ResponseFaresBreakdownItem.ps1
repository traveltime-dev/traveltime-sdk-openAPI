function New-ResponseFaresBreakdownItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTransportationMode[]]
        ${modes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32[]]
        ${routeUnderscorepartUnderscoreids},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseFareTicket[]]
        ${tickets}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseFaresBreakdownItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseFaresBreakdownItem -ArgumentList @(
            ${modes},
            ${routeUnderscorepartUnderscoreids},
            ${tickets}
        )
    }
}
