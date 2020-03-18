function New-ResponseMapInfoMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseMapInfoFeatures]
        ${features}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseMapInfoMap' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseMapInfoMap -ArgumentList @(
            ${name},
            ${features}
        )
    }
}
