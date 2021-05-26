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
.PARAMETER Fares
No description available.
.OUTPUTS

ResponseTimeFilterFastProperties<PSCustomObject>
#>

function Initialize-ResponseTimeFilterFastProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TravelTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Fares}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseTimeFilterFastProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "travel_time" = ${TravelTime}
            "fares" = ${Fares}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseTimeFilterFastProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseTimeFilterFastProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseTimeFilterFastProperties<PSCustomObject>
#>
function ConvertFrom-JsonToResponseTimeFilterFastProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseTimeFilterFastProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseTimeFilterFastProperties
        $AllProperties = ("travel_time", "fares")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fares"))) { #optional property not found
            $Fares = $null
        } else {
            $Fares = $JsonParameters.PSobject.Properties["fares"].value
        }

        $PSO = [PSCustomObject]@{
            "travel_time" = ${TravelTime}
            "fares" = ${Fares}
        }

        return $PSO
    }

}

