function New-ResponseTimeMapWktResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${shape},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeMapProperties]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeMapWktResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeMapWktResult -ArgumentList @(
            ${searchUnderscoreid},
            ${shape},
            ${properties}
        )
    }
}