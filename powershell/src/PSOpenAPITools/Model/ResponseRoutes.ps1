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

.PARAMETER Results
No description available.
.OUTPUTS

ResponseRoutes<PSCustomObject>
#>

function Initialize-ResponseRoutes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Results}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseRoutes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Results -eq $null) {
            throw "invalid value for 'Results', 'Results' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "results" = ${Results}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseRoutes<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseRoutes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseRoutes<PSCustomObject>
#>
function ConvertFrom-JsonToResponseRoutes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseRoutes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseRoutes
        $AllProperties = ("results")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'results' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "results"))) {
            throw "Error! JSON cannot be serialized due to the required property 'results' missing."
        } else {
            $Results = $JsonParameters.PSobject.Properties["results"].value
        }

        $PSO = [PSCustomObject]@{
            "results" = ${Results}
        }

        return $PSO
    }

}

