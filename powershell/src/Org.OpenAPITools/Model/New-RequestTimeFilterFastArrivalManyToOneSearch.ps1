function New-RequestTimeFilterFastArrivalManyToOneSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${arrivalUnderscorelocationUnderscoreid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${departureUnderscorelocationUnderscoreids},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTransportationFast]
        ${transportation},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${travelUnderscoretime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestArrivalTimePeriod]
        ${arrivalUnderscoretimeUnderscoreperiod},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTimeFilterFastProperty[]]
        ${properties}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterFastArrivalManyToOneSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterFastArrivalManyToOneSearch -ArgumentList @(
            ${id},
            ${arrivalUnderscorelocationUnderscoreid},
            ${departureUnderscorelocationUnderscoreids},
            ${transportation},
            ${travelUnderscoretime},
            ${arrivalUnderscoretimeUnderscoreperiod},
            ${properties}
        )
    }
}
