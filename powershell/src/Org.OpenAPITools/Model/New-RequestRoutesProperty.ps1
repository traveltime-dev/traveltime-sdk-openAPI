function New-RequestRoutesProperty {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating object: traveltimeplatform.Model.RequestRoutesProperty' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.RequestRoutesProperty -ArgumentList @(
        )
    }
}
