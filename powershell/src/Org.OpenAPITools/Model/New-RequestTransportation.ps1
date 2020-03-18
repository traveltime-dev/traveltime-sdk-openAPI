function New-RequestTransportation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${ptUnderscorechangeUnderscoredelay},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${walkingUnderscoretime},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${drivingUnderscoretimeUnderscoretoUnderscorestation},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${parkingUnderscoretime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${boardingUnderscoretime}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTransportation' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTransportation -ArgumentList @(
            ${type},
            ${ptUnderscorechangeUnderscoredelay},
            ${walkingUnderscoretime},
            ${drivingUnderscoretimeUnderscoretoUnderscorestation},
            ${parkingUnderscoretime},
            ${boardingUnderscoretime}
        )
    }
}
