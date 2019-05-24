function New-ResponseTimeFilterPostcodeSectorProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseTravelTimeStatistics]]
        ${travelUnderscoretimeUnderscorereachable},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseTravelTimeStatistics]]
        ${travelUnderscoretimeUnderscoreall},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${coverage}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeSectorProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeSectorProperties -ArgumentList @(
            ${travelUnderscoretimeUnderscorereachable},
            ${travelUnderscoretimeUnderscoreall},
            ${coverage}
        )
    }
}
