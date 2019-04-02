function New-ResponseTimeFilterFastProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${travelUnderscoretime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseFaresFast]]
        ${fares}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterFastProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterFastProperties -ArgumentList @(
            ${travelUnderscoretime},
            ${fares}
        )
    }
}
