function New-ResponseTimeFilterPostcodeSectors {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectorsResult[]]
        ${results}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectors' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectors -ArgumentList @(
            ${results}
        )
    }
}
