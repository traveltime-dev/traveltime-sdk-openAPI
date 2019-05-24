function New-RequestRoutesArrivalSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${departureUnderscorelocationUnderscoreids},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${arrivalUnderscorelocationUnderscoreid},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestTransportation]
        ${transportation},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.DateTime]
        ${arrivalUnderscoretime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestRoutesProperty[]]
        ${properties},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestRangeFull]]
        ${range}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestRoutesArrivalSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestRoutesArrivalSearch -ArgumentList @(
            ${id},
            ${departureUnderscorelocationUnderscoreids},
            ${arrivalUnderscorelocationUnderscoreid},
            ${transportation},
            ${arrivalUnderscoretime},
            ${properties},
            ${range}
        )
    }
}
