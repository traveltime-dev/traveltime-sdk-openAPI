function New-RequestArrivalTimePeriod {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestArrivalTimePeriod' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestArrivalTimePeriod -ArgumentList @(
        )
    }
}
