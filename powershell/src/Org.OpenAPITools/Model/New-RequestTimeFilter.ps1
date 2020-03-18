function New-RequestTimeFilter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestLocation[]]
        ${locations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterDepartureSearch[]]
        ${departureUnderscoresearches},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterArrivalSearch[]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilter' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilter -ArgumentList @(
            ${locations},
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
