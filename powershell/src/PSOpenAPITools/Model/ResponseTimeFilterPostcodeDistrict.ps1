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

.PARAMETER Code
No description available.
.PARAMETER Properties
No description available.
.OUTPUTS

ResponseTimeFilterPostcodeDistrict<PSCustomObject>
#>

function Initialize-ResponseTimeFilterPostcodeDistrict {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Code},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Properties}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodeDistrict' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Code -eq $null) {
            throw "invalid value for 'Code', 'Code' cannot be null."
        }

        if ($Properties -eq $null) {
            throw "invalid value for 'Properties', 'Properties' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "code" = ${Code}
            "properties" = ${Properties}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseTimeFilterPostcodeDistrict<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseTimeFilterPostcodeDistrict<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseTimeFilterPostcodeDistrict<PSCustomObject>
#>
function ConvertFrom-JsonToResponseTimeFilterPostcodeDistrict {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodeDistrict' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseTimeFilterPostcodeDistrict
        $AllProperties = ("code", "properties")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'code' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "code"))) {
            throw "Error! JSON cannot be serialized due to the required property 'code' missing."
        } else {
            $Code = $JsonParameters.PSobject.Properties["code"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) {
            throw "Error! JSON cannot be serialized due to the required property 'properties' missing."
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        $PSO = [PSCustomObject]@{
            "code" = ${Code}
            "properties" = ${Properties}
        }

        return $PSO
    }

}

