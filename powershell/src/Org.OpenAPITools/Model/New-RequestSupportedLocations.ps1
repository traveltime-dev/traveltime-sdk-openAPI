function New-RequestSupportedLocations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestLocation[]]
        ${locations}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestSupportedLocations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestSupportedLocations -ArgumentList @(
            ${locations}
        )
    }
}
