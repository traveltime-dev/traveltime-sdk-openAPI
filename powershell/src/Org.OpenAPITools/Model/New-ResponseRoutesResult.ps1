function New-ResponseRoutesResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseRoutesLocation[]]
        ${locations},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${unreachable}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseRoutesResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseRoutesResult -ArgumentList @(
            ${searchUnderscoreid},
            ${locations},
            ${unreachable}
        )
    }
}
