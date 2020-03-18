function New-ResponseBoundingBox {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseBox]
        ${envelope},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseBox[]]
        ${boxes}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseBoundingBox' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseBoundingBox -ArgumentList @(
            ${envelope},
            ${boxes}
        )
    }
}
