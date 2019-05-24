function New-ResponseMapInfoFeatures {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseMapInfoFeaturesPublicTransport]]
        ${publicUnderscoretransport},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Boolean]
        ${fares},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Boolean]
        ${postcodes}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseMapInfoFeatures' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseMapInfoFeatures -ArgumentList @(
            ${publicUnderscoretransport},
            ${fares},
            ${postcodes}
        )
    }
}
