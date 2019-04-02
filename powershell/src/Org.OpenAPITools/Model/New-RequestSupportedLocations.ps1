function New-RequestSupportedLocations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestLocation[]]
        ${locations}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestSupportedLocations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestSupportedLocations -ArgumentList @(
            ${locations}
        )
    }
}
