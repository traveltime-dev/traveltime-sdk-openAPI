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

.PARAMETER Enabled
No description available.
.PARAMETER MaxResults
No description available.
.PARAMETER Width
No description available.
.OUTPUTS

RequestRangeFull<PSCustomObject>
#>

function Initialize-RequestRangeFull {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Enabled},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${MaxResults},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Width}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => RequestRangeFull' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Enabled -eq $null) {
            throw "invalid value for 'Enabled', 'Enabled' cannot be null."
        }

        if ($MaxResults -eq $null) {
            throw "invalid value for 'MaxResults', 'MaxResults' cannot be null."
        }

        if ($MaxResults -gt 5) {
          throw "invalid value for 'MaxResults', must be smaller than or equal to 5."
        }

        if ($MaxResults -lt 1) {
          throw "invalid value for 'MaxResults', must be greater than or equal to 1."
        }

        if ($Width -eq $null) {
            throw "invalid value for 'Width', 'Width' cannot be null."
        }

        if ($Width -gt 43200) {
          throw "invalid value for 'Width', must be smaller than or equal to 43200."
        }

        if ($Width -lt 1) {
          throw "invalid value for 'Width', must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "max_results" = ${MaxResults}
            "width" = ${Width}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestRangeFull<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestRangeFull<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestRangeFull<PSCustomObject>
#>
function ConvertFrom-JsonToRequestRangeFull {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => RequestRangeFull' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestRangeFull
        $AllProperties = ("enabled", "max_results", "width")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'enabled' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enabled' missing."
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "max_results"))) {
            throw "Error! JSON cannot be serialized due to the required property 'max_results' missing."
        } else {
            $MaxResults = $JsonParameters.PSobject.Properties["max_results"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "width"))) {
            throw "Error! JSON cannot be serialized due to the required property 'width' missing."
        } else {
            $Width = $JsonParameters.PSobject.Properties["width"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "max_results" = ${MaxResults}
            "width" = ${Width}
        }

        return $PSO
    }

}

