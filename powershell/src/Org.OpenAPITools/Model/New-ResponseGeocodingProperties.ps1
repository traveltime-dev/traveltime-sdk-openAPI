function New-ResponseGeocodingProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${label},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${score},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${houseUnderscorenumber},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${street},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${region},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${regionUnderscorecode},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${neighbourhood},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${county},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${macroregion},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${city},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${country},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${countryUnderscorecode},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${continent},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${postcode},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[traveltimeplatform.Model.ResponseMapInfoFeatures]]
        ${features}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseGeocodingProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseGeocodingProperties -ArgumentList @(
            ${name},
            ${label},
            ${score},
            ${houseUnderscorenumber},
            ${street},
            ${region},
            ${regionUnderscorecode},
            ${neighbourhood},
            ${county},
            ${macroregion},
            ${city},
            ${country},
            ${countryUnderscorecode},
            ${continent},
            ${postcode},
            ${features}
        )
    }
}
