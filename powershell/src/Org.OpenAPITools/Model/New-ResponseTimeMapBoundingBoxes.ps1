function New-ResponseTimeMapBoundingBoxes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeMapBoundingBoxesResult[]]
        ${results}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeMapBoundingBoxes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeMapBoundingBoxes -ArgumentList @(
            ${results}
        )
    }
}
