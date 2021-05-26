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

.PARAMETER Id
No description available.
.PARAMETER MapName
No description available.
.OUTPUTS

ResponseSupportedLocation<PSCustomObject>
#>

function Initialize-ResponseSupportedLocation {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MapName}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseSupportedLocation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($MapName -eq $null) {
            throw "invalid value for 'MapName', 'MapName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "map_name" = ${MapName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseSupportedLocation<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseSupportedLocation<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseSupportedLocation<PSCustomObject>
#>
function ConvertFrom-JsonToResponseSupportedLocation {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseSupportedLocation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseSupportedLocation
        $AllProperties = ("id", "map_name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "map_name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'map_name' missing."
        } else {
            $MapName = $JsonParameters.PSobject.Properties["map_name"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "map_name" = ${MapName}
        }

        return $PSO
    }

}

