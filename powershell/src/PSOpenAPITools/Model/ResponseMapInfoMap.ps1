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

.PARAMETER Name
No description available.
.PARAMETER Features
No description available.
.OUTPUTS

ResponseMapInfoMap<PSCustomObject>
#>

function Initialize-ResponseMapInfoMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Features}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseMapInfoMap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Features -eq $null) {
            throw "invalid value for 'Features', 'Features' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "features" = ${Features}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseMapInfoMap<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseMapInfoMap<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseMapInfoMap<PSCustomObject>
#>
function ConvertFrom-JsonToResponseMapInfoMap {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseMapInfoMap' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseMapInfoMap
        $AllProperties = ("name", "features")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "features"))) {
            throw "Error! JSON cannot be serialized due to the required property 'features' missing."
        } else {
            $Features = $JsonParameters.PSobject.Properties["features"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "features" = ${Features}
        }

        return $PSO
    }

}

