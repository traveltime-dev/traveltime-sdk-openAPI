function New-ResponseTimeFilterPostcodeSectorProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseTravelTimeStatistics]
        ${travelUnderscoretimeUnderscorereachable},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseTravelTimeStatistics]
        ${travelUnderscoretimeUnderscoreall},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${coverage}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectorProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectorProperties -ArgumentList @(
            ${travelUnderscoretimeUnderscorereachable},
            ${travelUnderscoretimeUnderscoreall},
            ${coverage}
        )
    }
}
