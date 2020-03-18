function New-ResponseFares {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseFaresBreakdownItem[]]
        ${breakdown},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseFareTicket[]]
        ${ticketsUnderscoretotal}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseFares' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseFares -ArgumentList @(
            ${breakdown},
            ${ticketsUnderscoretotal}
        )
    }
}
