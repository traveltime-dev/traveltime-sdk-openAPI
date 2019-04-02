function New-ResponseTimeFilterPostcodeDistricts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrictsResult[]]
        ${results}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeDistricts' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeDistricts -ArgumentList @(
            ${results}
        )
    }
}
