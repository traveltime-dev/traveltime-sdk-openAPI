function New-ResponseShape {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.Coords[]]
        ${shell},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.Coords[][]]
        ${holes}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseShape' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseShape -ArgumentList @(
            ${shell},
            ${holes}
        )
    }
}
