function New-ResponseFaresFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [traveltimeplatform.Model.ResponseFareTicket[]]
        ${ticketsUnderscoretotal}
    )

    Process {
        'Creating object: traveltimeplatform.Model.ResponseFaresFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName traveltimeplatform.Model.ResponseFaresFast -ArgumentList @(
            ${ticketsUnderscoretotal}
        )
    }
}
