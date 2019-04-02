function New-RequestTimeFilterPostcodesProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterPostcodesProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterPostcodesProperty -ArgumentList @(
        )
    }
}
