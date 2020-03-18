function New-ResponseFaresFast {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.ResponseFareTicket[]]
        ${ticketsUnderscoretotal}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ResponseFaresFast' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ResponseFaresFast -ArgumentList @(
            ${ticketsUnderscoretotal}
        )
    }
}
