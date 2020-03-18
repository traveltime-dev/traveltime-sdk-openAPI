function New-ResponseTimeFilterFastLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterFastProperties[]]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterFastLocation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterFastLocation -ArgumentList @(
            ${id},
            ${properties}
        )
    }
}
