function New-RequestTimeMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeMapDepartureSearch[]]]
        ${departureUnderscoresearches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeMapArrivalSearch[]]]
        ${arrivalUnderscoresearches},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestUnionOnIntersection[]]]
        ${unions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestUnionOnIntersection[]]]
        ${intersections}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeMap' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeMap -ArgumentList @(
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches},
            ${unions},
            ${intersections}
        )
    }
}
