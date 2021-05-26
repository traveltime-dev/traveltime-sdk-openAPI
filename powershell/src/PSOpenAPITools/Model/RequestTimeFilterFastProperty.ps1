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

.OUTPUTS

RequestTimeFilterFastProperty<PSCustomObject>
#>

function Initialize-RequestTimeFilterFastProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => RequestTimeFilterFastProperty' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestTimeFilterFastProperty<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestTimeFilterFastProperty<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestTimeFilterFastProperty<PSCustomObject>
#>
function ConvertFrom-JsonToRequestTimeFilterFastProperty {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => RequestTimeFilterFastProperty' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestTimeFilterFastProperty
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

