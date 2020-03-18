function New-RequestTimeFilterFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestLocation[]]
        ${locations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterFastArrivalSearches]
        ${arrivalUnderscoresearches}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterFast -ArgumentList @(
            ${locations},
            ${arrivalUnderscoresearches}
        )
    }
}
