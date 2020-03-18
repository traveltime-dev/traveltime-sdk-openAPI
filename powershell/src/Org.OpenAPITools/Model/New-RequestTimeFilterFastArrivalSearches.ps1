function New-RequestTimeFilterFastArrivalSearches {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterFastArrivalManyToOneSearch[]]
        ${manyUnderscoretoUnderscoreone},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterFastArrivalOneToManySearch[]]
        ${oneUnderscoretoUnderscoremany}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterFastArrivalSearches' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterFastArrivalSearches -ArgumentList @(
            ${manyUnderscoretoUnderscoreone},
            ${oneUnderscoretoUnderscoremany}
        )
    }
}
