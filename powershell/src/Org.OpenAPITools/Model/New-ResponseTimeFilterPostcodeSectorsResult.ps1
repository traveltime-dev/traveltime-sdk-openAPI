function New-ResponseTimeFilterPostcodeSectorsResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSector[]]
        ${sectors}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectorsResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectorsResult -ArgumentList @(
            ${searchUnderscoreid},
            ${sectors}
        )
    }
}
