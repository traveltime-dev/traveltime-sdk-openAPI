function New-ResponseTimeFilterPostcodeSectorsResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcodeSector[]]
        ${sectors}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeSectorsResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeSectorsResult -ArgumentList @(
            ${searchUnderscoreid},
            ${sectors}
        )
    }
}
