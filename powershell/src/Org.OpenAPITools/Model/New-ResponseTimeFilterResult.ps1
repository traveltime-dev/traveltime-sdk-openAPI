function New-ResponseTimeFilterResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterLocation[]]
        ${locations},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${unreachable}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterResult -ArgumentList @(
            ${searchUnderscoreid},
            ${locations},
            ${unreachable}
        )
    }
}
