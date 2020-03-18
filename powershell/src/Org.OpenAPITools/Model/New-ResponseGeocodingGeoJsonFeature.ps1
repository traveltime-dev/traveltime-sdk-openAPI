function New-ResponseGeocodingGeoJsonFeature {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseGeocodingGeometry]
        ${geometry},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseGeocodingProperties]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseGeocodingGeoJsonFeature' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseGeocodingGeoJsonFeature -ArgumentList @(
            ${type},
            ${geometry},
            ${properties}
        )
    }
}
