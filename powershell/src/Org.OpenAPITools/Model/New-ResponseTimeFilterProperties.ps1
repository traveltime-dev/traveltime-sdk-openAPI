function New-ResponseTimeFilterProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${travelUnderscoretime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${distance},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseDistanceBreakdownItem[]]]
        ${distanceUnderscorebreakdown},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseFares]]
        ${fares},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseRoute]]
        ${route}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterProperties -ArgumentList @(
            ${travelUnderscoretime},
            ${distance},
            ${distanceUnderscorebreakdown},
            ${fares},
            ${route}
        )
    }
}
