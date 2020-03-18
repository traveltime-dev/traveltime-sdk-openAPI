function New-RequestTimeFilterPostcodeDistrictsProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterPostcodeDistrictsProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterPostcodeDistrictsProperty -ArgumentList @(
        )
    }
}
