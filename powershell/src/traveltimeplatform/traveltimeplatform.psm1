#region Import functions

'API', 'Model', 'Private' | Get-ChildItem -Path {
    Join-Path $PSScriptRoot $_
} -Filter '*.ps1' | ForEach-Object {
    Write-Verbose "Importing file: $($_.BaseName)"
    try {
        . $_.FullName
    } catch {
        Write-Verbose "Can't import function!"
    }
}

#endregion


#region Initialize APIs

'Creating object: traveltimeplatform.Api.DefaultApi' | Write-Verbose
$Script:DefaultApi= New-Object -TypeName traveltimeplatform.Api.DefaultApi -ArgumentList @($null)


#endregion
