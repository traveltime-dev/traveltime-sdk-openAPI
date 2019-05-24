function New-ResponseTimeFilterPostcodeDistrict {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${code},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrictProperties]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrict' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeDistrict -ArgumentList @(
            ${code},
            ${properties}
        )
    }
}
