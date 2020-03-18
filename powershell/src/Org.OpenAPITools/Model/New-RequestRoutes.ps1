function New-RequestRoutes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestLocation[]]
        ${locations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestRoutesDepartureSearch[]]
        ${departureUnderscoresearches},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestRoutesArrivalSearch[]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestRoutes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestRoutes -ArgumentList @(
            ${locations},
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
