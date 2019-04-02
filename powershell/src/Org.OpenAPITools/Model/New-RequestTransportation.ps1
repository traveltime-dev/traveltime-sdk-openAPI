function New-RequestTransportation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ptUnderscorechangeUnderscoredelay},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${walkingUnderscoretime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${drivingUnderscoretimeUnderscoretoUnderscorestation},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${parkingUnderscoretime},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${boardingUnderscoretime}
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTransportation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTransportation -ArgumentList @(
            ${type},
            ${ptUnderscorechangeUnderscoredelay},
            ${walkingUnderscoretime},
            ${drivingUnderscoretimeUnderscoretoUnderscorestation},
            ${parkingUnderscoretime},
            ${boardingUnderscoretime}
        )
    }
}
