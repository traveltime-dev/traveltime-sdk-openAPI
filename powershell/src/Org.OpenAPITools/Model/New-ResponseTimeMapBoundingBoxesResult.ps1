function New-ResponseTimeMapBoundingBoxesResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseBoundingBox[]]
        ${boundingUnderscoreboxes},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeMapProperties]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeMapBoundingBoxesResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeMapBoundingBoxesResult -ArgumentList @(
            ${searchUnderscoreid},
            ${boundingUnderscoreboxes},
            ${properties}
        )
    }
}
