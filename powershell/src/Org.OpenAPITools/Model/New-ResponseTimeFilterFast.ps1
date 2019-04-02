function New-ResponseTimeFilterFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterFastResult[]]
        ${results}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterFast -ArgumentList @(
            ${results}
        )
    }
}
