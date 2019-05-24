function New-RequestTimeFilterPostcodeDistrictsDepartureSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTransportation]
        ${transportation},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${travelUnderscoretime},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.DateTime]
        ${departureUnderscoretime},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${reachableUnderscorepostcodesUnderscorethreshold},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsProperty[]]
        ${properties},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestRangeFull]]
        ${range}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsDepartureSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsDepartureSearch -ArgumentList @(
            ${id},
            ${transportation},
            ${travelUnderscoretime},
            ${departureUnderscoretime},
            ${reachableUnderscorepostcodesUnderscorethreshold},
            ${properties},
            ${range}
        )
    }
}
