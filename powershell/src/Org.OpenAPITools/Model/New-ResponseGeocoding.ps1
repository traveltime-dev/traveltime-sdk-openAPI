function New-ResponseGeocoding {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseGeocodingGeoJsonFeature[]]
        ${features}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseGeocoding' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseGeocoding -ArgumentList @(
            ${type},
            ${features}
        )
    }
}
