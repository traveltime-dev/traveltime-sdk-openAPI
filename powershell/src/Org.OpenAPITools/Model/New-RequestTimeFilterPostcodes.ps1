function New-RequestTimeFilterPostcodes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterPostcodesDepartureSearch[]]]
        ${departureUnderscoresearches},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterPostcodesArrivalSearch[]]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterPostcodes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterPostcodes -ArgumentList @(
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
