function New-RequestTimeFilterDepartureSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${departureUnderscorelocationUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${arrivalUnderscorelocationUnderscoreids},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTransportation]
        ${transportation},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${travelUnderscoretime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.DateTime]
        ${departureUnderscoretime},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTimeFilterProperty[]]
        ${properties},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestRangeFull]]
        ${range}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterDepartureSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterDepartureSearch -ArgumentList @(
            ${id},
            ${departureUnderscorelocationUnderscoreid},
            ${arrivalUnderscorelocationUnderscoreids},
            ${transportation},
            ${travelUnderscoretime},
            ${departureUnderscoretime},
            ${properties},
            ${range}
        )
    }
}
