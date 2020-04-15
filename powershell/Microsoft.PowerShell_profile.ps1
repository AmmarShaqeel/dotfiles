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
function journal {cd "C:\Users\ammar_laptop\Google Drive\journals"}
function log {cd "C:\Users\ammar_laptop\Google Drive\logs"}
function thesis {cd "C:\Users\ammar_laptop\Documents\thesis"}
function report {cd "C:\Users\ammar_laptop\Documents\SNS"}
function sns {
conda activate sns
cd "C:\Users\ammar_laptop\scripts\sns\" 
}

