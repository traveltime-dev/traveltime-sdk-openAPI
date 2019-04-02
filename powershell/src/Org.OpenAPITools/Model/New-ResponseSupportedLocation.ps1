function New-ResponseSupportedLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${mapUnderscorename}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseSupportedLocation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseSupportedLocation -ArgumentList @(
            ${id},
            ${mapUnderscorename}
        )
    }
}
