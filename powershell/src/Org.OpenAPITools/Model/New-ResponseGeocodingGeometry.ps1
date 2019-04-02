function New-ResponseGeocodingGeometry {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double[]]
        ${coordinates}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseGeocodingGeometry' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseGeocodingGeometry -ArgumentList @(
            ${type},
            ${coordinates}
        )
    }
}
