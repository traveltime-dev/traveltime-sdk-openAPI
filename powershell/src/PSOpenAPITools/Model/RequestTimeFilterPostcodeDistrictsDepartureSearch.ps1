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

.PARAMETER Id
No description available.
.PARAMETER Transportation
No description available.
.PARAMETER TravelTime
No description available.
.PARAMETER DepartureTime
No description available.
.PARAMETER ReachablePostcodesThreshold
No description available.
.PARAMETER Properties
No description available.
.PARAMETER Range
No description available.
.OUTPUTS

RequestTimeFilterPostcodeDistrictsDepartureSearch<PSCustomObject>
#>

function Initialize-RequestTimeFilterPostcodeDistrictsDepartureSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Transportation},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${TravelTime},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${DepartureTime},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${ReachablePostcodesThreshold},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Range}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => RequestTimeFilterPostcodeDistrictsDepartureSearch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($Transportation -eq $null) {
            throw "invalid value for 'Transportation', 'Transportation' cannot be null."
        }

        if ($TravelTime -eq $null) {
            throw "invalid value for 'TravelTime', 'TravelTime' cannot be null."
        }

        if ($TravelTime -gt 14400) {
          throw "invalid value for 'TravelTime', must be smaller than or equal to 14400."
        }

        if ($TravelTime -lt 60) {
          throw "invalid value for 'TravelTime', must be greater than or equal to 60."
        }

        if ($DepartureTime -eq $null) {
            throw "invalid value for 'DepartureTime', 'DepartureTime' cannot be null."
        }

        if ($ReachablePostcodesThreshold -eq $null) {
            throw "invalid value for 'ReachablePostcodesThreshold', 'ReachablePostcodesThreshold' cannot be null."
        }

        if ($Properties -eq $null) {
            throw "invalid value for 'Properties', 'Properties' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "transportation" = ${Transportation}
            "travel_time" = ${TravelTime}
            "departure_time" = ${DepartureTime}
            "reachable_postcodes_threshold" = ${ReachablePostcodesThreshold}
            "properties" = ${Properties}
            "range" = ${Range}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestTimeFilterPostcodeDistrictsDepartureSearch<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestTimeFilterPostcodeDistrictsDepartureSearch<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestTimeFilterPostcodeDistrictsDepartureSearch<PSCustomObject>
#>
function ConvertFrom-JsonToRequestTimeFilterPostcodeDistrictsDepartureSearch {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => RequestTimeFilterPostcodeDistrictsDepartureSearch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestTimeFilterPostcodeDistrictsDepartureSearch
        $AllProperties = ("id", "transportation", "travel_time", "departure_time", "reachable_postcodes_threshold", "properties", "range")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transportation"))) {
            throw "Error! JSON cannot be serialized due to the required property 'transportation' missing."
        } else {
            $Transportation = $JsonParameters.PSobject.Properties["transportation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "travel_time"))) {
            throw "Error! JSON cannot be serialized due to the required property 'travel_time' missing."
        } else {
            $TravelTime = $JsonParameters.PSobject.Properties["travel_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "departure_time"))) {
            throw "Error! JSON cannot be serialized due to the required property 'departure_time' missing."
        } else {
            $DepartureTime = $JsonParameters.PSobject.Properties["departure_time"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reachable_postcodes_threshold"))) {
            throw "Error! JSON cannot be serialized due to the required property 'reachable_postcodes_threshold' missing."
        } else {
            $ReachablePostcodesThreshold = $JsonParameters.PSobject.Properties["reachable_postcodes_threshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "properties"))) {
            throw "Error! JSON cannot be serialized due to the required property 'properties' missing."
        } else {
            $Properties = $JsonParameters.PSobject.Properties["properties"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "range"))) { #optional property not found
            $Range = $null
        } else {
            $Range = $JsonParameters.PSobject.Properties["range"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "transportation" = ${Transportation}
            "travel_time" = ${TravelTime}
            "departure_time" = ${DepartureTime}
            "reachable_postcodes_threshold" = ${ReachablePostcodesThreshold}
            "properties" = ${Properties}
            "range" = ${Range}
        }

        return $PSO
    }

}

