function New-ResponseSupportedLocations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseSupportedLocation[]]
        ${locations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${unsupportedUnderscorelocations}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseSupportedLocations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseSupportedLocations -ArgumentList @(
            ${locations},
            ${unsupportedUnderscorelocations}
        )
    }
}
