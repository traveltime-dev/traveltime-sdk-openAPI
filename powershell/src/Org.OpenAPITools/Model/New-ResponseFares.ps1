function New-ResponseFares {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseFaresBreakdownItem[]]
        ${breakdown},
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseFareTicket[]]
        ${ticketsUnderscoretotal}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseFares' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseFares -ArgumentList @(
            ${breakdown},
            ${ticketsUnderscoretotal}
        )
    }
}
