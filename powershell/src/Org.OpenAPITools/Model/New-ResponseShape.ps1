function New-ResponseShape {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.Coords[]]
        ${shell},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.Coords[][]]
        ${holes}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseShape' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseShape -ArgumentList @(
            ${shell},
            ${holes}
        )
    }
}
