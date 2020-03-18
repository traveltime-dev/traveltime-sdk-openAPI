function New-RequestUnionOnIntersection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String[]]
        ${searchUnderscoreids}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.RequestUnionOnIntersection' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.RequestUnionOnIntersection -ArgumentList @(
            ${id},
            ${searchUnderscoreids}
        )
    }
}
