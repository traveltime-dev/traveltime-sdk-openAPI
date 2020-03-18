function New-ResponseRoutesLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseRoutesProperties[]]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseRoutesLocation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseRoutesLocation -ArgumentList @(
            ${id},
            ${properties}
        )
    }
}
