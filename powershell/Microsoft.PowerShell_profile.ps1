Set-PSReadlineOption -BellStyle None
set-alias np "gvim.exe"

<# function vim([string] $arg1) 
{
	if($arg1)
	{start vim $arg1}
	else
	{start vim}
} #>

function home {cd "C:\Users\ammar_laptop\"}
function dotfiles {cd "C:\Users\ammar_laptop\scripts\dotfiles"}
function scripts {cd "C:\Users\ammar_laptop\scripts\"}
function journals {cd "C:\Users\ammar_laptop\Google Drive\journals"}
function logs {cd "C:\Users\ammar_laptop\Google Drive\logs"}
function thesis {cd "D:\OneDrive - University College London\Project\thesis"}
function report {cd "C:\Users\ammar_laptop\Documents\SNS"}
function sns {
conda activate sns
cd "C:\Users\ammar_laptop\scripts\sns\" 
}

