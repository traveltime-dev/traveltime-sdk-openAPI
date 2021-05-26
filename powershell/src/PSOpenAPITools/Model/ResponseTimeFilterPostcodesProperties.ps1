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

.PARAMETER TravelTime
No description available.
.PARAMETER Distance
No description available.
.OUTPUTS

ResponseTimeFilterPostcodesProperties<PSCustomObject>
#>

function Initialize-ResponseTimeFilterPostcodesProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TravelTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Distance}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodesProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "travel_time" = ${TravelTime}
            "distance" = ${Distance}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseTimeFilterPostcodesProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseTimeFilterPostcodesProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseTimeFilterPostcodesProperties<PSCustomObject>
#>
function ConvertFrom-JsonToResponseTimeFilterPostcodesProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodesProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseTimeFilterPostcodesProperties
        $AllProperties = ("travel_time", "distance")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "travel_time"))) { #optional property not found
            $TravelTime = $null
        } else {
            $TravelTime = $JsonParameters.PSobject.Properties["travel_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "distance"))) { #optional property not found
            $Distance = $null
        } else {
            $Distance = $JsonParameters.PSobject.Properties["distance"].value
        }

        $PSO = [PSCustomObject]@{
            "travel_time" = ${TravelTime}
            "distance" = ${Distance}
        }

        return $PSO
    }

}

