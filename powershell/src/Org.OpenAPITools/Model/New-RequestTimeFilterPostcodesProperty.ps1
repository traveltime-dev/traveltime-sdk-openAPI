function New-RequestTimeFilterPostcodesProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTimeFilterPostcodesProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTimeFilterPostcodesProperty -ArgumentList @(
        )
    }
}
