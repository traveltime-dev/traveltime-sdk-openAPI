#
# TravelTime API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.2.3
# Contact: support@igeolise.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Locations
No description available.
.PARAMETER DepartureSearches
No description available.
.PARAMETER ArrivalSearches
No description available.
.OUTPUTS

RequestTimeFilter<PSCustomObject>
#>

function Initialize-RequestTimeFilter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Locations},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DepartureSearches},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ArrivalSearches}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => RequestTimeFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Locations -eq $null) {
            throw "invalid value for 'Locations', 'Locations' cannot be null."
        }

        if ($Locations.length -lt 1) {
            throw "invalid value for 'Locations', number of items must be greater than or equal to 1."
        }

        if (!$DepartureSearches -and $DepartureSearches.length -gt 10) {
            throw "invalid value for 'DepartureSearches', number of items must be less than or equal to 10."
        }

        if (!$ArrivalSearches -and $ArrivalSearches.length -gt 10) {
            throw "invalid value for 'ArrivalSearches', number of items must be less than or equal to 10."
        }


        $PSO = [PSCustomObject]@{
            "locations" = ${Locations}
            "departure_searches" = ${DepartureSearches}
            "arrival_searches" = ${ArrivalSearches}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestTimeFilter<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestTimeFilter<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestTimeFilter<PSCustomObject>
#>
function ConvertFrom-JsonToRequestTimeFilter {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => RequestTimeFilter' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestTimeFilter
        $AllProperties = ("locations", "departure_searches", "arrival_searches")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'locations' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locations"))) {
            throw "Error! JSON cannot be serialized due to the required property 'locations' missing."
        } else {
            $Locations = $JsonParameters.PSobject.Properties["locations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "departure_searches"))) { #optional property not found
            $DepartureSearches = $null
        } else {
            $DepartureSearches = $JsonParameters.PSobject.Properties["departure_searches"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "arrival_searches"))) { #optional property not found
            $ArrivalSearches = $null
        } else {
            $ArrivalSearches = $JsonParameters.PSobject.Properties["arrival_searches"].value
        }

        $PSO = [PSCustomObject]@{
            "locations" = ${Locations}
            "departure_searches" = ${DepartureSearches}
            "arrival_searches" = ${ArrivalSearches}
        }

        return $PSO
    }

}

