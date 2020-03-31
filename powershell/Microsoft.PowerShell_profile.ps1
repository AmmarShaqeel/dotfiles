Set-PSReadlineOption -BellStyle None
set-alias np "C:\Program Files (x86)\Notepad++\notepad++.exe"

<# function vim([string] $arg1) 
{
	if($arg1)
	{start vim $arg1}
	else
	{start vim}
} #>

function home {cd "C:\Users\ammar_laptop\"}
function scripts {cd "C:\Users\ammar_laptop\scripts\"}
function journal {cd "C:\Users\ammar_laptop\Google Drive\journals"}
function fpga {cd "N:\FPGA\"}
function sns {
conda activate sns
cd "C:\Users\ammar_laptop\scripts\sns\" 
}

. (Join-Path -Path (Split-Path -Parent -Path $PROFILE) -ChildPath $(switch($HOST.UI.RawUI.BackgroundColor.ToString()){'White'{'Set-SolarizedLightColorDefaults.ps1'}'Black'{'Set-SolarizedDarkColorDefaults.ps1'}default{return}}))
