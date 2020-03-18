function Invoke-DefaultApiGeocodingReverseSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${lat},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${lng},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${withinPeriodcountry}
    )

    Process {
        'Calling method: DefaultApi-GeocodingReverseSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.GeocodingReverseSearch(
            ${lat},
            ${lng},
            ${withinPeriodcountry}
        )
    }
}

function Invoke-DefaultApiGeocodingSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${query},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Double]
        ${focusPeriodlat},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Double]
        ${focusPeriodlng},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${withinPeriodcountry}
    )

    Process {
        'Calling method: DefaultApi-GeocodingSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.GeocodingSearch(
            ${query},
            ${focusPeriodlat},
            ${focusPeriodlng},
            ${withinPeriodcountry}
        )
    }
}

function Invoke-DefaultApiMapInfo {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: DefaultApi-MapInfo' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.MapInfo(
        )
    }
}

function Invoke-DefaultApiRoutes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestRoutes]
        ${requestRoutes}
    )

    Process {
        'Calling method: DefaultApi-Routes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.Routes(
            ${requestRoutes}
        )
    }
}

function Invoke-DefaultApiSupportedLocations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestSupportedLocations]
        ${requestSupportedLocations}
    )

    Process {
        'Calling method: DefaultApi-SupportedLocations' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.SupportedLocations(
            ${requestSupportedLocations}
        )
    }
}

function Invoke-DefaultApiTimeFilter {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilter]
        ${requestTimeFilter}
    )

    Process {
        'Calling method: DefaultApi-TimeFilter' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.TimeFilter(
            ${requestTimeFilter}
        )
    }
}

function Invoke-DefaultApiTimeFilterFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterFast]
        ${requestTimeFilterFast}
    )

    Process {
        'Calling method: DefaultApi-TimeFilterFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.TimeFilterFast(
            ${requestTimeFilterFast}
        )
    }
}

function Invoke-DefaultApiTimeFilterPostcodeDistricts {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterPostcodeDistricts]
        ${requestTimeFilterPostcodeDistricts}
    )

    Process {
        'Calling method: DefaultApi-TimeFilterPostcodeDistricts' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.TimeFilterPostcodeDistricts(
            ${requestTimeFilterPostcodeDistricts}
        )
    }
}

function Invoke-DefaultApiTimeFilterPostcodeSectors {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterPostcodeSectors]
        ${requestTimeFilterPostcodeSectors}
    )

    Process {
        'Calling method: DefaultApi-TimeFilterPostcodeSectors' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.TimeFilterPostcodeSectors(
            ${requestTimeFilterPostcodeSectors}
        )
    }
}

function Invoke-DefaultApiTimeFilterPostcodes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeFilterPostcodes]
        ${requestTimeFilterPostcodes}
    )

    Process {
        'Calling method: DefaultApi-TimeFilterPostcodes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.TimeFilterPostcodes(
            ${requestTimeFilterPostcodes}
        )
    }
}

function Invoke-DefaultApiTimeMap {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.RequestTimeMap]
        ${requestTimeMap}
    )

    Process {
        'Calling method: DefaultApi-TimeMap' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.TimeMap(
            ${requestTimeMap}
        )
    }
}

