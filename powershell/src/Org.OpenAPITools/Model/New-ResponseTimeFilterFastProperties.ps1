function New-ResponseTimeFilterFastProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${travelUnderscoretime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseFaresFast]
        ${fares}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterFastProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterFastProperties -ArgumentList @(
            ${travelUnderscoretime},
            ${fares}
        )
    }
}
