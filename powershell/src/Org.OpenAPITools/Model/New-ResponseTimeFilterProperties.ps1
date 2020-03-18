function New-ResponseTimeFilterProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${travelUnderscoretime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${distance},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseDistanceBreakdownItem[]]
        ${distanceUnderscorebreakdown},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseFares]
        ${fares},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseRoute]
        ${route}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterProperties -ArgumentList @(
            ${travelUnderscoretime},
            ${distance},
            ${distanceUnderscorebreakdown},
            ${fares},
            ${route}
        )
    }
}
