function New-ResponseTimeFilterPostcodesResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTimeFilterPostcode[]]
        ${postcodes}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodesResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodesResult -ArgumentList @(
            ${searchUnderscoreid},
            ${postcodes}
        )
    }
}
