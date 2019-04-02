function New-ResponseTimeFilterPostcodeDistrictProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseTravelTimeStatistics]]
        ${travelUnderscoretimeUnderscorereachable},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseTravelTimeStatistics]]
        ${travelUnderscoretimeUnderscoreall},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${coverage}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrictProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrictProperties -ArgumentList @(
            ${travelUnderscoretimeUnderscorereachable},
            ${travelUnderscoretimeUnderscoreall},
            ${coverage}
        )
    }
}
