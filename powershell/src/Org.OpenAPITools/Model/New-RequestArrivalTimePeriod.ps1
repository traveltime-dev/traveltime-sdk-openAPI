function New-RequestArrivalTimePeriod {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestArrivalTimePeriod' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestArrivalTimePeriod -ArgumentList @(
        )
    }
}
