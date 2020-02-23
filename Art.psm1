Function Get-WindowsArt()
{
    [string[]] $ArtArray  = Get-Content $PSScriptRoot\windows-art.txt
    return $ArtArray;
}

Function Get-MacArt()
{
    [string[]] $ArtArray = 
            "                 -/+:.                  ",
            "                :++++.                  ",
            "               /+++/.                   ",
            "       .:-::- .+/:-\`\`.::-               ",
            "    .:/++++++/::::/++++++/:\`            ",
            "  .:///////////////////////:\`           ",
            "  ////////////////////////\`             ",
            " -+++++++++++++++++++++++\`              ",
            " /++++++++++++++++++++++/               ",
            " /sssssssssssssssssssssss.              ",
            " :ssssssssssssssssssssssss-             ",
            "  osssssssssssssssssssssssso/\`          ",
            "  \`syyyyyyyyyyyyyyyyyyyyyyyy+\`          ",
            "   \`ossssssssssssssssssssss/            ",
            "     :ooooooooooooooooooo+.             ",
            "      \`:+oo+/:-..-:/+o+/-               ",
            "                                        ",
            "                                        ",
            "                                        ",
            "                                        ";

    return $ArtArray;    
}


