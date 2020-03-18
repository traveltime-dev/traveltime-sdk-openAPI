function New-RequestTimeFilterPostcodeSectorsProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterPostcodeSectorsProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterPostcodeSectorsProperty -ArgumentList @(
        )
    }
}
