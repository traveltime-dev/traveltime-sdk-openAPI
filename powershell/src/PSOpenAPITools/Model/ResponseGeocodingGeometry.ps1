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

.PARAMETER Type
No description available.
.PARAMETER Coordinates
No description available.
.OUTPUTS

ResponseGeocodingGeometry<PSCustomObject>
#>

function Initialize-ResponseGeocodingGeometry {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Double[]]
        ${Coordinates}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseGeocodingGeometry' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Type -eq $null) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($Coordinates -eq $null) {
            throw "invalid value for 'Coordinates', 'Coordinates' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "coordinates" = ${Coordinates}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseGeocodingGeometry<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseGeocodingGeometry<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseGeocodingGeometry<PSCustomObject>
#>
function ConvertFrom-JsonToResponseGeocodingGeometry {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseGeocodingGeometry' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseGeocodingGeometry
        $AllProperties = ("type", "coordinates")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "coordinates"))) {
            throw "Error! JSON cannot be serialized due to the required property 'coordinates' missing."
        } else {
            $Coordinates = $JsonParameters.PSobject.Properties["coordinates"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "coordinates" = ${Coordinates}
        }

        return $PSO
    }

}

