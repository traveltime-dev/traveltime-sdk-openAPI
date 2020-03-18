function New-ResponseRoutesProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${travelUnderscoretime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${distance},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseFares]
        ${fares},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.ResponseRoute]
        ${route}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseRoutesProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseRoutesProperties -ArgumentList @(
            ${travelUnderscoretime},
            ${distance},
            ${fares},
            ${route}
        )
    }
}
