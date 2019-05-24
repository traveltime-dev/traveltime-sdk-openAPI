function New-ResponseTimeFilterPostcodeDistrictsResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrict[]]
        ${districts}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrictsResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrictsResult -ArgumentList @(
            ${searchUnderscoreid},
            ${districts}
        )
    }
}
