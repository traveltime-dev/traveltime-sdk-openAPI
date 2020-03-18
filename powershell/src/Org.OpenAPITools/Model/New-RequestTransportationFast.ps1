function New-RequestTransportationFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestTransportationFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestTransportationFast -ArgumentList @(
            ${type}
        )
    }
}
