#
# TravelTime API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.2.1
# Contact: support@igeolise.com
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER TravelTimeReachable
No description available.
.PARAMETER TravelTimeAll
No description available.
.PARAMETER Coverage
No description available.
.OUTPUTS

ResponseTimeFilterPostcodeSectorProperties<PSCustomObject>
#>

function Initialize-ResponseTimeFilterPostcodeSectorProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TravelTimeReachable},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TravelTimeAll},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Coverage}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodeSectorProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "travel_time_reachable" = ${TravelTimeReachable}
            "travel_time_all" = ${TravelTimeAll}
            "coverage" = ${Coverage}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseTimeFilterPostcodeSectorProperties<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseTimeFilterPostcodeSectorProperties<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseTimeFilterPostcodeSectorProperties<PSCustomObject>
#>
function ConvertFrom-JsonToResponseTimeFilterPostcodeSectorProperties {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodeSectorProperties' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseTimeFilterPostcodeSectorProperties
        $AllProperties = ("travel_time_reachable", "travel_time_all", "coverage")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "travel_time_reachable"))) { #optional property not found
            $TravelTimeReachable = $null
        } else {
            $TravelTimeReachable = $JsonParameters.PSobject.Properties["travel_time_reachable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "travel_time_all"))) { #optional property not found
            $TravelTimeAll = $null
        } else {
            $TravelTimeAll = $JsonParameters.PSobject.Properties["travel_time_all"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "coverage"))) { #optional property not found
            $Coverage = $null
        } else {
            $Coverage = $JsonParameters.PSobject.Properties["coverage"].value
        }

        $PSO = [PSCustomObject]@{
            "travel_time_reachable" = ${TravelTimeReachable}
            "travel_time_all" = ${TravelTimeAll}
            "coverage" = ${Coverage}
        }

        return $PSO
    }

}
