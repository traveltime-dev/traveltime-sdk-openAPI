function New-ResponseTimeFilterPostcodesProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${travelUnderscoretime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${distance}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeFilterPostcodesProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeFilterPostcodesProperties -ArgumentList @(
            ${travelUnderscoretime},
            ${distance}
        )
    }
}
