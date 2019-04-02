function New-ResponseTimeFilterPostcodeSector {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${code},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcodeSectorProperties]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeSector' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeSector -ArgumentList @(
            ${code},
            ${properties}
        )
    }
}
