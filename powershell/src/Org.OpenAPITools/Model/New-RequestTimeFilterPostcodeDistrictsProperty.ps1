function New-RequestTimeFilterPostcodeDistrictsProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterPostcodeDistrictsProperty -ArgumentList @(
        )
    }
}
