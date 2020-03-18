function New-ResponseRoutePart {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTransportationMode]
        ${mode},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${directions},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${distance},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Int32]
        ${travelUnderscoretime},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.Coords[]]
        ${coords},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${direction},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${road},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${turn},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${line},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${departureUnderscorestation},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${arrivalUnderscorestation},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${departsUnderscoreat},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${arrivesUnderscoreat},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${numUnderscorestops}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseRoutePart' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseRoutePart -ArgumentList @(
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
