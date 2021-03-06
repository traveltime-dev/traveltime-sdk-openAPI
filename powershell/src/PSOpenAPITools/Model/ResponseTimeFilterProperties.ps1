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
.PARAMETER DistanceBreakdown
No description available.
.PARAMETER Fares
No description available.
.PARAMETER Route
No description available.
.OUTPUTS

ResponseTimeFilterProperties<PSCustomObject>
#>

function Initialize-ResponseTimeFilterProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TravelTime},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Distance},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${DistanceBreakdown},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Fares},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Route}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseTimeFilterProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "travel_time" = ${TravelTime}
            "distance" = ${Distance}
            "distance_breakdown" = ${DistanceBreakdown}
            "fares" = ${Fares}
            "route" = ${Route}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseTimeFilterProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseTimeFilterProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseTimeFilterProperties<PSCustomObject>
#>
function ConvertFrom-JsonToResponseTimeFilterProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseTimeFilterProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseTimeFilterProperties
        $AllProperties = ("travel_time", "distance", "distance_breakdown", "fares", "route")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "distance_breakdown"))) { #optional property not found
            $DistanceBreakdown = $null
        } else {
            $DistanceBreakdown = $JsonParameters.PSobject.Properties["distance_breakdown"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fares"))) { #optional property not found
            $Fares = $null
        } else {
            $Fares = $JsonParameters.PSobject.Properties["fares"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "route"))) { #optional property not found
            $Route = $null
        } else {
            $Route = $JsonParameters.PSobject.Properties["route"].value
        }

        $PSO = [PSCustomObject]@{
            "travel_time" = ${TravelTime}
            "distance" = ${Distance}
            "distance_breakdown" = ${DistanceBreakdown}
            "fares" = ${Fares}
            "route" = ${Route}
        }

        return $PSO
    }

}

