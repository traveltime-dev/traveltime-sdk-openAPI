#
# TravelTime API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.2.2
# Contact: support@igeolise.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER DepartureSearches
No description available.
.PARAMETER ArrivalSearches
No description available.
.PARAMETER Unions
No description available.
.PARAMETER Intersections
No description available.
.OUTPUTS

RequestTimeMap<PSCustomObject>
#>

function Initialize-RequestTimeMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DepartureSearches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ArrivalSearches},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Unions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Intersections}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => RequestTimeMap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$DepartureSearches -and $DepartureSearches.length -gt 10) {
            throw "invalid value for 'DepartureSearches', number of items must be less than or equal to 10."
        }

        if (!$ArrivalSearches -and $ArrivalSearches.length -gt 10) {
            throw "invalid value for 'ArrivalSearches', number of items must be less than or equal to 10."
        }

        if (!$Unions -and $Unions.length -gt 10) {
            throw "invalid value for 'Unions', number of items must be less than or equal to 10."
        }

        if (!$Intersections -and $Intersections.length -gt 10) {
            throw "invalid value for 'Intersections', number of items must be less than or equal to 10."
        }


        $PSO = [PSCustomObject]@{
            "departure_searches" = ${DepartureSearches}
            "arrival_searches" = ${ArrivalSearches}
            "unions" = ${Unions}
            "intersections" = ${Intersections}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestTimeMap<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestTimeMap<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestTimeMap<PSCustomObject>
#>
function ConvertFrom-JsonToRequestTimeMap {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => RequestTimeMap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestTimeMap
        $AllProperties = ("departure_searches", "arrival_searches", "unions", "intersections")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unions"))) { #optional property not found
            $Unions = $null
        } else {
            $Unions = $JsonParameters.PSobject.Properties["unions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "intersections"))) { #optional property not found
            $Intersections = $null
        } else {
            $Intersections = $JsonParameters.PSobject.Properties["intersections"].value
        }

        $PSO = [PSCustomObject]@{
            "departure_searches" = ${DepartureSearches}
            "arrival_searches" = ${ArrivalSearches}
            "unions" = ${Unions}
            "intersections" = ${Intersections}
        }

        return $PSO
    }

}

