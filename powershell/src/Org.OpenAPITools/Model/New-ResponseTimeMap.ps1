function New-ResponseTimeMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeMapResult[]]
        ${results}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeMap' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeMap -ArgumentList @(
            ${results}
        )
    }
}
