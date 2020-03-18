function New-ResponseTimeFilterFastResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterFastLocation[]]
        ${locations},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${unreachable}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterFastResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterFastResult -ArgumentList @(
            ${searchUnderscoreid},
            ${locations},
            ${unreachable}
        )
    }
}
