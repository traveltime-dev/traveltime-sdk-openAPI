function New-RequestTimeFilterFastArrivalManyToOneSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${arrivalUnderscorelocationUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${departureUnderscorelocationUnderscoreids},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTransportationFast]
        ${transportation},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${travelUnderscoretime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestArrivalTimePeriod]
        ${arrivalUnderscoretimeUnderscoreperiod},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterFastProperty[]]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterFastArrivalManyToOneSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterFastArrivalManyToOneSearch -ArgumentList @(
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
