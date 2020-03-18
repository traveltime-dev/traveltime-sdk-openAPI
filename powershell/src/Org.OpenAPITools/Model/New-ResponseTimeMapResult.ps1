function New-ResponseTimeMapResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${searchUnderscoreid},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseShape[]]
        ${shapes},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseTimeMapProperties]
        ${properties}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseTimeMapResult' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseTimeMapResult -ArgumentList @(
            ${searchUnderscoreid},
            ${shapes},
            ${properties}
        )
    }
}
