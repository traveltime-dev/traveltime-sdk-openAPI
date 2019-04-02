function New-ResponseTimeFilterFastLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterFastProperties[]]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterFastLocation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterFastLocation -ArgumentList @(
            ${id},
            ${properties}
        )
    }
}
