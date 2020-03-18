function New-RequestTimeMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeMapDepartureSearch[]]
        ${departureUnderscoresearches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeMapArrivalSearch[]]
        ${arrivalUnderscoresearches},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestUnionOnIntersection[]]
        ${unions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestUnionOnIntersection[]]
        ${intersections}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeMap' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeMap -ArgumentList @(
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches},
            ${unions},
            ${intersections}
        )
    }
}
