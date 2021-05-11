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

.PARAMETER Id
No description available.
.PARAMETER DepartureLocationIds
No description available.
.PARAMETER ArrivalLocationId
No description available.
.PARAMETER Transportation
No description available.
.PARAMETER TravelTime
No description available.
.PARAMETER ArrivalTime
No description available.
.PARAMETER Properties
No description available.
.PARAMETER Range
No description available.
.OUTPUTS

RequestTimeFilterArrivalSearch<PSCustomObject>
#>

function Initialize-RequestTimeFilterArrivalSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DepartureLocationIds},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ArrivalLocationId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Transportation},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${TravelTime},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${ArrivalTime},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Properties},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Range}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => RequestTimeFilterArrivalSearch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($DepartureLocationIds -eq $null) {
            throw "invalid value for 'DepartureLocationIds', 'DepartureLocationIds' cannot be null."
        }

        if ($DepartureLocationIds.length -gt 2000) {
            throw "invalid value for 'DepartureLocationIds', number of items must be less than or equal to 2000."
        }

        if ($DepartureLocationIds.length -lt 1) {
            throw "invalid value for 'DepartureLocationIds', number of items must be greater than or equal to 1."
        }

        if ($ArrivalLocationId -eq $null) {
            throw "invalid value for 'ArrivalLocationId', 'ArrivalLocationId' cannot be null."
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

        if ($ArrivalTime -eq $null) {
            throw "invalid value for 'ArrivalTime', 'ArrivalTime' cannot be null."
        }

        if ($Properties -eq $null) {
            throw "invalid value for 'Properties', 'Properties' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "departure_location_ids" = ${DepartureLocationIds}
            "arrival_location_id" = ${ArrivalLocationId}
            "transportation" = ${Transportation}
            "travel_time" = ${TravelTime}
            "arrival_time" = ${ArrivalTime}
            "properties" = ${Properties}
            "range" = ${Range}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestTimeFilterArrivalSearch<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestTimeFilterArrivalSearch<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestTimeFilterArrivalSearch<PSCustomObject>
#>
function ConvertFrom-JsonToRequestTimeFilterArrivalSearch {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => RequestTimeFilterArrivalSearch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in RequestTimeFilterArrivalSearch
        $AllProperties = ("id", "departure_location_ids", "arrival_location_id", "transportation", "travel_time", "arrival_time", "properties", "range")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "departure_location_ids"))) {
            throw "Error! JSON cannot be serialized due to the required property 'departure_location_ids' missing."
        } else {
            $DepartureLocationIds = $JsonParameters.PSobject.Properties["departure_location_ids"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "arrival_location_id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'arrival_location_id' missing."
        } else {
            $ArrivalLocationId = $JsonParameters.PSobject.Properties["arrival_location_id"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "arrival_time"))) {
            throw "Error! JSON cannot be serialized due to the required property 'arrival_time' missing."
        } else {
            $ArrivalTime = $JsonParameters.PSobject.Properties["arrival_time"].value
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
            "departure_location_ids" = ${DepartureLocationIds}
            "arrival_location_id" = ${ArrivalLocationId}
            "transportation" = ${Transportation}
            "travel_time" = ${TravelTime}
            "arrival_time" = ${ArrivalTime}
            "properties" = ${Properties}
            "range" = ${Range}
        }

        return $PSO
    }

}

