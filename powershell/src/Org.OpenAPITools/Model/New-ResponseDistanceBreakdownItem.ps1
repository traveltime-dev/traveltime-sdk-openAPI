function New-ResponseDistanceBreakdownItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTransportationMode]
        ${mode},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${distance}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseDistanceBreakdownItem' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseDistanceBreakdownItem -ArgumentList @(
            ${mode},
            ${distance}
        )
    }
}
