function New-ResponseMapInfo {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseMapInfoMap[]]
        ${maps}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseMapInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseMapInfo -ArgumentList @(
            ${maps}
        )
    }
}
