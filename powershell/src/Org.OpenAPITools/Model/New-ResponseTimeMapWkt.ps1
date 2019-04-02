function New-ResponseTimeMapWkt {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeMapWktResult[]]
        ${results}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeMapWkt' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeMapWkt -ArgumentList @(
            ${results}
        )
    }
}
