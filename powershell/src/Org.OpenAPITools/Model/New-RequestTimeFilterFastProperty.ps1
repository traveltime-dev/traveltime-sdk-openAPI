function New-RequestTimeFilterFastProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestTimeFilterFastProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestTimeFilterFastProperty -ArgumentList @(
        )
    }
}
