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

.PARAMETER MinLat
No description available.
.PARAMETER MaxLat
No description available.
.PARAMETER MinLng
No description available.
.PARAMETER MaxLng
No description available.
.OUTPUTS

ResponseBox<PSCustomObject>
#>

function Initialize-ResponseBox {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${MinLat},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${MaxLat},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${MinLng},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Double]
        ${MaxLng}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ResponseBox' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($MinLat -eq $null) {
            throw "invalid value for 'MinLat', 'MinLat' cannot be null."
        }

        if ($MaxLat -eq $null) {
            throw "invalid value for 'MaxLat', 'MaxLat' cannot be null."
        }

        if ($MinLng -eq $null) {
            throw "invalid value for 'MinLng', 'MinLng' cannot be null."
        }

        if ($MaxLng -eq $null) {
            throw "invalid value for 'MaxLng', 'MaxLng' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "min_lat" = ${MinLat}
            "max_lat" = ${MaxLat}
            "min_lng" = ${MinLng}
            "max_lng" = ${MaxLng}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ResponseBox<PSCustomObject>

.DESCRIPTION

Convert from JSON to ResponseBox<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ResponseBox<PSCustomObject>
#>
function ConvertFrom-JsonToResponseBox {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ResponseBox' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ResponseBox
        $AllProperties = ("min_lat", "max_lat", "min_lng", "max_lng")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'min_lat' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "min_lat"))) {
            throw "Error! JSON cannot be serialized due to the required property 'min_lat' missing."
        } else {
            $MinLat = $JsonParameters.PSobject.Properties["min_lat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "max_lat"))) {
            throw "Error! JSON cannot be serialized due to the required property 'max_lat' missing."
        } else {
            $MaxLat = $JsonParameters.PSobject.Properties["max_lat"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "min_lng"))) {
            throw "Error! JSON cannot be serialized due to the required property 'min_lng' missing."
        } else {
            $MinLng = $JsonParameters.PSobject.Properties["min_lng"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "max_lng"))) {
            throw "Error! JSON cannot be serialized due to the required property 'max_lng' missing."
        } else {
            $MaxLng = $JsonParameters.PSobject.Properties["max_lng"].value
        }

        $PSO = [PSCustomObject]@{
            "min_lat" = ${MinLat}
            "max_lat" = ${MaxLat}
            "min_lng" = ${MinLng}
            "max_lng" = ${MaxLng}
        }

        return $PSO
    }

}

