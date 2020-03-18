function New-ResponseMapInfoFeaturesPublicTransport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.DateTime]
        ${dateUnderscorestart},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.DateTime]
        ${dateUnderscoreend}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseMapInfoFeaturesPublicTransport' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseMapInfoFeaturesPublicTransport -ArgumentList @(
            ${dateUnderscorestart},
            ${dateUnderscoreend}
        )
    }
}
