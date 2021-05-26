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

.PARAMETER SearchId
No description available.
.PARAMETER Locations
No description available.
.PARAMETER Unreachable
No description available.
.OUTPUTS

ResponseRoutesResult<PSCustomObject>
#>

function Initialize-ResponseRoutesResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearchId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Locations},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Unreachable}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseRoutesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($SearchId -eq $null) {
            throw "invalid value for 'SearchId', 'SearchId' cannot be null."
        }

        if ($Locations -eq $null) {
            throw "invalid value for 'Locations', 'Locations' cannot be null."
        }

        if ($Unreachable -eq $null) {
            throw "invalid value for 'Unreachable', 'Unreachable' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "search_id" = ${SearchId}
            "locations" = ${Locations}
            "unreachable" = ${Unreachable}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseRoutesResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseRoutesResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseRoutesResult<PSCustomObject>
#>
function ConvertFrom-JsonToResponseRoutesResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseRoutesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseRoutesResult
        $AllProperties = ("search_id", "locations", "unreachable")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locations"))) {
            throw "Error! JSON cannot be serialized due to the required property 'locations' missing."
        } else {
            $Locations = $JsonParameters.PSobject.Properties["locations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unreachable"))) {
            throw "Error! JSON cannot be serialized due to the required property 'unreachable' missing."
        } else {
            $Unreachable = $JsonParameters.PSobject.Properties["unreachable"].value
        }

        $PSO = [PSCustomObject]@{
            "search_id" = ${SearchId}
            "locations" = ${Locations}
            "unreachable" = ${Unreachable}
        }

        return $PSO
    }

}

