param(
    [string]$InputFilePath
)

# Clean before build
Remove-Item -Path (Get-ChildItem | Where-Object { $_.Name -like '*ProtoPack*' })

if ($InputFilePath -ne "") {
    $items = Get-Content -Path $InputFilePath | ForEach-Object {
        $line = $_.Trim()  # Remove leading/trailing whitespace
    
        # Check if the line starts with '# ' and contains a trailing comment
        $line = $_ -replace '\s*#.*$', ''  # Remove trailing comments
    
        if ($line -match '\S') {
            $line
        }
    } | Where-Object { $_ -notmatch '^# ' -and $_ -match '\S' }


    # Define the base command
    $baseCommand = "packwiz.exe modrinth add --yes"

    # Process each item and run the command
    foreach ($item in $items) {
        $fullCommand = "$baseCommand $item"
        Write-Host "Running command: $fullCommand"
        Invoke-Expression $fullCommand
    }
}

# Export pack
packwiz.exe modrinth export
