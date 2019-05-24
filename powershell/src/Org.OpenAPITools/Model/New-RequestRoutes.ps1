function New-RequestRoutes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestLocation[]]
        ${locations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestRoutesDepartureSearch[]]]
        ${departureUnderscoresearches},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestRoutesArrivalSearch[]]]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestRoutes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestRoutes -ArgumentList @(
            ${locations},
            ${departureUnderscoresearches},
            ${arrivalUnderscoresearches}
        )
    }
}
