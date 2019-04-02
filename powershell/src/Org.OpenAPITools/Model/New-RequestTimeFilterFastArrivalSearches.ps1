function New-RequestTimeFilterFastArrivalSearches {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterFastArrivalManyToOneSearch[]]]
        ${manyUnderscoretoUnderscoreone},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestTimeFilterFastArrivalOneToManySearch[]]]
        ${oneUnderscoretoUnderscoremany}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterFastArrivalSearches' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterFastArrivalSearches -ArgumentList @(
            ${manyUnderscoretoUnderscoreone},
            ${oneUnderscoretoUnderscoremany}
        )
    }
}
