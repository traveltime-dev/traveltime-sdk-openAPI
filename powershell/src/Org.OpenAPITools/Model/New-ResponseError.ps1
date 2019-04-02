function New-ResponseError {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${httpUnderscorestatus},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${errorUnderscorecode},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${description},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${documentationUnderscorelink},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[{String, String[]}]]
        ${additionalUnderscoreinfo}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseError' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseError -ArgumentList @(
            ${httpUnderscorestatus},
            ${errorUnderscorecode},
            ${description},
            ${documentationUnderscorelink},
            ${additionalUnderscoreinfo}
        )
    }
}