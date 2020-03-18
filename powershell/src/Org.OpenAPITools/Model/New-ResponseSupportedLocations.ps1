function New-ResponseSupportedLocations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseSupportedLocation[]]
        ${locations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${unsupportedUnderscorelocations}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseSupportedLocations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseSupportedLocations -ArgumentList @(
            ${locations},
            ${unsupportedUnderscorelocations}
        )
    }
}
