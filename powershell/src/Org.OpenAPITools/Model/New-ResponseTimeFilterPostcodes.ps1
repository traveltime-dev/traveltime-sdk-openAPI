function New-ResponseTimeFilterPostcodes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeFilterPostcodesResult[]]
        ${results}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeFilterPostcodes' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeFilterPostcodes -ArgumentList @(
            ${results}
        )
    }
}
