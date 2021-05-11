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

.PARAMETER SearchId
No description available.
.PARAMETER Sectors
No description available.
.OUTPUTS

ResponseTimeFilterPostcodeSectorsResult<PSCustomObject>
#>

function Initialize-ResponseTimeFilterPostcodeSectorsResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearchId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Sectors}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodeSectorsResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($SearchId -eq $null) {
            throw "invalid value for 'SearchId', 'SearchId' cannot be null."
        }

        if ($Sectors -eq $null) {
            throw "invalid value for 'Sectors', 'Sectors' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "search_id" = ${SearchId}
            "sectors" = ${Sectors}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseTimeFilterPostcodeSectorsResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseTimeFilterPostcodeSectorsResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseTimeFilterPostcodeSectorsResult<PSCustomObject>
#>
function ConvertFrom-JsonToResponseTimeFilterPostcodeSectorsResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodeSectorsResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseTimeFilterPostcodeSectorsResult
        $AllProperties = ("search_id", "sectors")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'search_id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "search_id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'search_id' missing."
        } else {
            $SearchId = $JsonParameters.PSobject.Properties["search_id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sectors"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sectors' missing."
        } else {
            $Sectors = $JsonParameters.PSobject.Properties["sectors"].value
        }

        $PSO = [PSCustomObject]@{
            "search_id" = ${SearchId}
            "sectors" = ${Sectors}
        }

        return $PSO
    }

}

