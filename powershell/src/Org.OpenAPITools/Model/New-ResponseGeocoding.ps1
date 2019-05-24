function New-ResponseGeocoding {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseGeocodingGeoJsonFeature[]]
        ${features}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseGeocoding' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseGeocoding -ArgumentList @(
            ${type},
            ${features}
        )
    }
}
