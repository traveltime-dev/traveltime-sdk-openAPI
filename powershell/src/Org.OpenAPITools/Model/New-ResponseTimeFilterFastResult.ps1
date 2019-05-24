function New-ResponseTimeFilterFastResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterFastLocation[]]
        ${locations},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${unreachable}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterFastResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterFastResult -ArgumentList @(
            ${searchUnderscoreid},
            ${locations},
            ${unreachable}
        )
    }
}
