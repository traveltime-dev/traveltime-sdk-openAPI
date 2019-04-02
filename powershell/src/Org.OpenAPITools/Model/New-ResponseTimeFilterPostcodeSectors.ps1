function New-ResponseTimeFilterPostcodeSectors {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcodeSectorsResult[]]
        ${results}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodeSectors' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodeSectors -ArgumentList @(
            ${results}
        )
    }
}
