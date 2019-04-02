function New-ResponseTimeFilterPostcode {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${code},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcodesProperties[]]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcode' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcode -ArgumentList @(
            ${code},
            ${properties}
        )
    }
}
