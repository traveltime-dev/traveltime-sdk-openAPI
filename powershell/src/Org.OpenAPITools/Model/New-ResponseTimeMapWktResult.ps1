function New-ResponseTimeMapWktResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${shape},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeMapProperties]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeMapWktResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeMapWktResult -ArgumentList @(
            ${searchUnderscoreid},
            ${shape},
            ${properties}
        )
    }
}
