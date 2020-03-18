function New-ResponseBox {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${minUnderscorelat},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${maxUnderscorelat},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${minUnderscorelng},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${maxUnderscorelng}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseBox' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseBox -ArgumentList @(
            ${minUnderscorelat},
            ${maxUnderscorelat},
            ${minUnderscorelng},
            ${maxUnderscorelng}
        )
    }
}
