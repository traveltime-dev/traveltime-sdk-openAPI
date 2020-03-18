function New-ResponseTimeFilterPostcodeSector {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${code},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSectorProperties]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSector' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterPostcodeSector -ArgumentList @(
            ${code},
            ${properties}
        )
    }
}
