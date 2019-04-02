function New-ResponseMapInfoMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseMapInfoFeatures]
        ${features}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseMapInfoMap' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseMapInfoMap -ArgumentList @(
            ${name},
            ${features}
        )
    }
}
