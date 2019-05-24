function New-RequestTimeFilterPostcodeSectors {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsDepartureSearch[]]]
        ${departureUnderscoresearches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsArrivalSearch[]]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterPostcodeSectors' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterPostcodeSectors -ArgumentList @(
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
