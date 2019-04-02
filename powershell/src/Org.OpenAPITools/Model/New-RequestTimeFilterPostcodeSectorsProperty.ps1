function New-RequestTimeFilterPostcodeSectorsProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterPostcodeSectorsProperty -ArgumentList @(
        )
    }
}
