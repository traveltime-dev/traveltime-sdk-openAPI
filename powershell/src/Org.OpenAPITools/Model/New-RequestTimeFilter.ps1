function New-RequestTimeFilter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestLocation[]]
        ${locations},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterDepartureSearch[]]]
        ${departureUnderscoresearches},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterArrivalSearch[]]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilter' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilter -ArgumentList @(
            ${locations},
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
