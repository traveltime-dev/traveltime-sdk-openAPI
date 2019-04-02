function New-RequestTimeFilterFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestLocation[]]
        ${locations},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTimeFilterFastArrivalSearches]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterFast -ArgumentList @(
            ${locations},
            ${arrivalUnderscoresearches}
        )
    }
}
