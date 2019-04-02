function New-ResponseTimeMapProperties {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${isUnderscoreonlyUnderscorewalking}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseTimeMapProperties' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseTimeMapProperties -ArgumentList @(
            ${isUnderscoreonlyUnderscorewalking}
        )
    }
}
