function New-RequestTimeFilterFastArrivalOneToManySearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${departureUnderscorelocationUnderscoreid},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${arrivalUnderscorelocationUnderscoreids},
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
        'Creating object: traveltimeplatform.Model.RequestTimeFilterFastArrivalOneToManySearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterFastArrivalOneToManySearch -ArgumentList @(
            ${id},
            ${departureUnderscorelocationUnderscoreid},
            ${arrivalUnderscorelocationUnderscoreids},
            ${transportation},
            ${travelUnderscoretime},
            ${arrivalUnderscoretimeUnderscoreperiod},
            ${properties}
        )
    }
}
