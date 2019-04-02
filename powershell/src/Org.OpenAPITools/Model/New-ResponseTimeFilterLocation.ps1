function New-ResponseTimeFilterLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterProperties[]]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterLocation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterLocation -ArgumentList @(
            ${id},
            ${properties}
        )
    }
}
