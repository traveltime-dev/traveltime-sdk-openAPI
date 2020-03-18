function New-Coords {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${lat},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${lng}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Coords' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Coords -ArgumentList @(
            ${lat},
            ${lng}
        )
    }
}
