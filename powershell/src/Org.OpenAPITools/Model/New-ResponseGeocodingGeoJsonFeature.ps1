function New-ResponseGeocodingGeoJsonFeature {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseGeocodingGeometry]
        ${geometry},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseGeocodingProperties]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseGeocodingGeoJsonFeature' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseGeocodingGeoJsonFeature -ArgumentList @(
            ${type},
            ${geometry},
            ${properties}
        )
    }
}
