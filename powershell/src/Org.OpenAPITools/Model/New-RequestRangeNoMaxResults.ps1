function New-RequestRangeNoMaxResults {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Boolean]
        ${enabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${width}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestRangeNoMaxResults' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestRangeNoMaxResults -ArgumentList @(
            ${enabled},
            ${width}
        )
    }
}
