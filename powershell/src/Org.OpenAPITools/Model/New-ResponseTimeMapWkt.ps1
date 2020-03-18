function New-ResponseTimeMapWkt {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeMapWktResult[]]
        ${results}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeMapWkt' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeMapWkt -ArgumentList @(
            ${results}
        )
    }
}
