function New-ResponseRoutePart {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseTransportationMode]
        ${mode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${directions},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${distance},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${travelUnderscoretime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.Coords[]]
        ${coords},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${direction},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${road},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${turn},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${line},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${departureUnderscorestation},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${arrivalUnderscorestation},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${departsUnderscoreat},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${arrivesUnderscoreat},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${numUnderscorestops}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseRoutePart' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseRoutePart -ArgumentList @(
            ${id},
            ${type},
            ${mode},
            ${directions},
            ${distance},
            ${travelUnderscoretime},
            ${coords},
            ${direction},
            ${road},
            ${turn},
            ${line},
            ${departureUnderscorestation},
            ${arrivalUnderscorestation},
            ${departsUnderscoreat},
            ${arrivesUnderscoreat},
            ${numUnderscorestops}
        )
    }
}
