function New-ResponseTimeFilterLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterProperties[]]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterLocation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterLocation -ArgumentList @(
            ${id},
            ${properties}
        )
    }
}
