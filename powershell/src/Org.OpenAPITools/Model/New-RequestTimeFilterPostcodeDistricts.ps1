function New-RequestTimeFilterPostcodeDistricts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsDepartureSearch[]]]
        ${departureUnderscoresearches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsArrivalSearch[]]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterPostcodeDistricts' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterPostcodeDistricts -ArgumentList @(
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
