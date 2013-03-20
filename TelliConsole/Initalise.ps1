﻿function Write-Telligent
{
	begin {
		$hostColor = $host.UI.RawUI.BackgroundColor
		if($hostColor -eq [ConsoleColor]::Black -or $hostColor -match "Dark") {
			$textColour = [ConsoleColor]::White
		}
		else {
			$textColour  = [ConsoleColor]::Black
		}
	}
	process {
		function Write-LogoPart
		{
			param(
				[string]$part1,
				[string]$part2,
				[string]$part3,
				[string]$part4
			)
			Write-Host ' ' - NoNewLine
			Write-Host $part1 -ForegroundColor Blue -NoNewline
			Write-Host $part2 -ForegroundColor DarkCyan -NoNewline
			Write-Host $part3 -ForegroundColor Cyan -NoNewline
			Write-Host $part4 -ForegroundColor $textColour
		}


		Write-LogoPart "__ " "__ " "__  " " _       _ _ _                  _   "
		Write-LogoPart "\ \" "\ \" "\ \ " "| |_ ___| | (_) ___  ___   ___ | |_ "
		Write-LogoPart " \ \" "\ \" "\ \" "| __/ _ \ | | |/ _ \/ _ \ / _ \| __| "
		Write-LogoPart " / /" "/ /" "/ /" "| |_| __/ | | | (_| |  _/| | | | |_ "
		Write-LogoPart "/_/" "/_/" "/_/ " " \__\___|_|_|_|\__, |\___|_| |_|\__|"
		Write-LogoPart "   " "   " "    " "               |___/                "
	}
}

$env:PSModulePath +=  ";$env:TelligentPowershell"

Write-Telligent