function New-ResponseMapInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseMapInfoMap[]]
        ${maps}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseMapInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseMapInfo -ArgumentList @(
            ${maps}
        )
    }
}
