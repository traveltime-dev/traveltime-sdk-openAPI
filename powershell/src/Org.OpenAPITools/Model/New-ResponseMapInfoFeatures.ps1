function New-ResponseMapInfoFeatures {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseMapInfoFeaturesPublicTransport]
        ${publicUnderscoretransport},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Boolean]
        ${fares},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Boolean]
        ${postcodes}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseMapInfoFeatures' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseMapInfoFeatures -ArgumentList @(
            ${publicUnderscoretransport},
            ${fares},
            ${postcodes}
        )
    }
}
