#### Screenfetch for powershell
#### Author Julian Chow


Function Screenfetch($distro)
{
    $AsciiArt = "";

    if (-not $distro) 
    {
        $AsciiArt = . Get-WindowsArt;
    }

    if (([string]::Compare($distro, "mac", $true) -eq 0) -or 
        ([string]::Compare($distro, "macOS", $true) -eq 0) -or 
        ([string]::Compare($distro, "osx", $true) -eq 0)) {
            
        $AsciiArt = . Get-MacArt;
    }
    else 
    {
        $AsciiArt = . Get-WindowsArt;
    }

    $SystemInfoCollection = . Get-SystemSpecifications;
    $LineToTitleMappings = . Get-LineToTitleMappings;

    for ($line = 0; $line -lt $SystemInfoCollection.Count; $line++) 
    {
        if ($AsciiArt.Count -gt $line) {
            $art = $AsciiArt[$line];
            $artPieces = $art.Split('|')
            if ($line -lt 7) {
                Write-Host $artPieces[0] -f Red -NoNewline;
            } else {
                Write-Host $artPieces[0] -f Blue -NoNewline;
            }

            if ($line -lt 9) {
                Write-Host $artPieces[1] -f Green -NoNewline;
            } else {
                Write-Host $artPieces[1] -f Yellow -NoNewline;
            }
        } else {
            Write-Host ("`t`t`t`t`t") -NoNewline;
        }
        
        Write-Host $LineToTitleMappings[$line] -f Red -NoNewline;

        if ($line -eq 0) 
        {
            Write-Host $SystemInfoCollection[$line] -f Red;
        }

        elseif ($SystemInfoCollection[$line] -like '*:*') 
        {
            $Seperator = ":";
            $Splitted = $SystemInfoCollection[$line].Split($seperator);

            $Title = $Splitted[0] + $Seperator;
            $Content = $Splitted[1];

            Write-Host $Title -f Red -NoNewline;
            Write-Host $Content;
        }
        else 
        {
            Write-Host $SystemInfoCollection[$line];            
        }
    }
}

