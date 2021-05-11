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
.PARAMETER Postcodes
No description available.
.OUTPUTS

ResponseTimeFilterPostcodesResult<PSCustomObject>
#>

function Initialize-ResponseTimeFilterPostcodesResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SearchId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Postcodes}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($SearchId -eq $null) {
            throw "invalid value for 'SearchId', 'SearchId' cannot be null."
        }

        if ($Postcodes -eq $null) {
            throw "invalid value for 'Postcodes', 'Postcodes' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "search_id" = ${SearchId}
            "postcodes" = ${Postcodes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseTimeFilterPostcodesResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseTimeFilterPostcodesResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseTimeFilterPostcodesResult<PSCustomObject>
#>
function ConvertFrom-JsonToResponseTimeFilterPostcodesResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseTimeFilterPostcodesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseTimeFilterPostcodesResult
        $AllProperties = ("search_id", "postcodes")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "postcodes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'postcodes' missing."
        } else {
            $Postcodes = $JsonParameters.PSobject.Properties["postcodes"].value
        }

        $PSO = [PSCustomObject]@{
            "search_id" = ${SearchId}
            "postcodes" = ${Postcodes}
        }

        return $PSO
    }

}

