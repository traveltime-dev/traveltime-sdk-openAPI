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

.PARAMETER Shell
No description available.
.PARAMETER Holes
No description available.
.OUTPUTS

ResponseShape<PSCustomObject>
#>

function Initialize-ResponseShape {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Shell},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[][]]
        ${Holes}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseShape' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Shell -eq $null) {
            throw "invalid value for 'Shell', 'Shell' cannot be null."
        }

        if ($Holes -eq $null) {
            throw "invalid value for 'Holes', 'Holes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "shell" = ${Shell}
            "holes" = ${Holes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseShape<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseShape<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseShape<PSCustomObject>
#>
function ConvertFrom-JsonToResponseShape {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseShape' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseShape
        $AllProperties = ("shell", "holes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'shell' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "shell"))) {
            throw "Error! JSON cannot be serialized due to the required property 'shell' missing."
        } else {
            $Shell = $JsonParameters.PSobject.Properties["shell"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "holes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'holes' missing."
        } else {
            $Holes = $JsonParameters.PSobject.Properties["holes"].value
        }

        $PSO = [PSCustomObject]@{
            "shell" = ${Shell}
            "holes" = ${Holes}
        }

        return $PSO
    }

}

