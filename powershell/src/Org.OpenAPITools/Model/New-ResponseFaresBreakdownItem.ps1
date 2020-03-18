function New-ResponseFaresBreakdownItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTransportationMode[]]
        ${modes},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32[]]
        ${routeUnderscorepartUnderscoreids},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseFareTicket[]]
        ${tickets}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseFaresBreakdownItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseFaresBreakdownItem -ArgumentList @(
            ${modes},
            ${routeUnderscorepartUnderscoreids},
            ${tickets}
        )
    }
}
