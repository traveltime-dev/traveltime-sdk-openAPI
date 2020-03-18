function New-ResponseTimeFilterPostcodeDistrictProperties {
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
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterPostcodeDistrictProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterPostcodeDistrictProperties -ArgumentList @(
            ${travelUnderscoretimeUnderscorereachable},
            ${travelUnderscoretimeUnderscoreall},
            ${coverage}
        )
    }
}
