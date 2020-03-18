function New-ResponseFareTicket {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Double]
        ${price},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${currency}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseFareTicket' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseFareTicket -ArgumentList @(
            ${type},
            ${price},
            ${currency}
        )
    }
}
