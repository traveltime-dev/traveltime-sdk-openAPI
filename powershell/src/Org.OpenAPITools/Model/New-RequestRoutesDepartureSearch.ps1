function New-RequestRoutesDepartureSearch {
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
        [traveltimeplatform.Model.RequestTransportation]
        ${transportation},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.DateTime]
        ${departureUnderscoretime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.RequestRoutesProperty[]]
        ${properties},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.RequestRangeFull]]
        ${range}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestRoutesDepartureSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestRoutesDepartureSearch -ArgumentList @(
            ${id},
            ${departureUnderscorelocationUnderscoreid},
            ${arrivalUnderscorelocationUnderscoreids},
            ${transportation},
            ${departureUnderscoretime},
            ${properties},
            ${range}
        )
    }
}
