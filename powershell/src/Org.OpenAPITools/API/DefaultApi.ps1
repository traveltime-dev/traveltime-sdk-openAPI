function Invoke-DefaultApiGeocodingReverseSearch {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${focusPeriodlat},
        [Parameter(Position = 1, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${focusPeriodlng},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${withinPeriodcountry}
    )

    Process {
        'Calling method: DefaultApi-GeocodingReverseSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.GeocodingReverseSearch(
            ${focusPeriodlat},
            ${focusPeriodlng},
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
        [String]
        ${withinPeriodcountry},
        [Parameter(Position = 2, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Double]
        ${focusPeriodlat},
        [Parameter(Position = 3, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Double]
        ${focusPeriodlng}
    )

    Process {
        'Calling method: DefaultApi-GeocodingSearch' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:DefaultApi.GeocodingSearch(
            ${query},
            ${withinPeriodcountry},
            ${focusPeriodlat},
            ${focusPeriodlng}
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
        [traveltimeplatform.Model.RequestRoutes]
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
        [traveltimeplatform.Model.RequestSupportedLocations]
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
        [traveltimeplatform.Model.RequestTimeFilter]
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
        [traveltimeplatform.Model.RequestTimeFilterFast]
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
        [traveltimeplatform.Model.RequestTimeFilterPostcodeDistricts]
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
        [traveltimeplatform.Model.RequestTimeFilterPostcodeSectors]
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
        [traveltimeplatform.Model.RequestTimeFilterPostcodes]
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
        [traveltimeplatform.Model.RequestTimeMap]
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

