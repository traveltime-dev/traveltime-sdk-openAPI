function New-RequestTimeFilterPostcodeSectors {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterPostcodeSectorsDepartureSearch[]]
        ${departureUnderscoresearches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterPostcodeSectorsArrivalSearch[]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterPostcodeSectors' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterPostcodeSectors -ArgumentList @(
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
