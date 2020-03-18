function New-ResponseTimeFilterFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterFastResult[]]
        ${results}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterFast -ArgumentList @(
            ${results}
        )
    }
}
