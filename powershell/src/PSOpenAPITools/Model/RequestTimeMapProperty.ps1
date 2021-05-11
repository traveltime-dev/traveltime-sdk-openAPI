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

.OUTPUTS

RequestTimeMapProperty<PSCustomObject>
#>

function Initialize-RequestTimeMapProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => RequestTimeMapProperty' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestTimeMapProperty<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestTimeMapProperty<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestTimeMapProperty<PSCustomObject>
#>
function ConvertFrom-JsonToRequestTimeMapProperty {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => RequestTimeMapProperty' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestTimeMapProperty
        $AllProperties = ()
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        $PSO = [PSCustomObject]@{
        }

        return $PSO
    }

}

