function New-RequestTimeFilterPostcodeDistricts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterPostcodeDistrictsDepartureSearch[]]
        ${departureUnderscoresearches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterPostcodeDistrictsArrivalSearch[]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterPostcodeDistricts' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterPostcodeDistricts -ArgumentList @(
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
