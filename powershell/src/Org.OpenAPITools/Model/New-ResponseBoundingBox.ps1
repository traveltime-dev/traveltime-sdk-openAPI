function New-ResponseBoundingBox {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseBox]
        ${envelope},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseBox[]]
        ${boxes}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseBoundingBox' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseBoundingBox -ArgumentList @(
            ${envelope},
            ${boxes}
        )
    }
}
