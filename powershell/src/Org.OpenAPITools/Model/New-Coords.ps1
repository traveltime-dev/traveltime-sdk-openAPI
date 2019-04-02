function New-Coords {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${lat},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${lng}
    )

    Process {
        'Creating object: traveltimeplatform.Model.Coords' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.Coords -ArgumentList @(
            ${lat},
            ${lng}
        )
    }
}
