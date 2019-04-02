function New-ResponseTimeFilterResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterLocation[]]
        ${locations},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${unreachable}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterResult -ArgumentList @(
            ${searchUnderscoreid},
            ${locations},
            ${unreachable}
        )
    }
}
