function New-ResponseRoutes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseRoutesResult[]]
        ${results}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseRoutes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseRoutes -ArgumentList @(
            ${results}
        )
    }
}
