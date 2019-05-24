function New-ResponseRoutesLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseRoutesProperties[]]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseRoutesLocation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseRoutesLocation -ArgumentList @(
            ${id},
            ${properties}
        )
    }
}
