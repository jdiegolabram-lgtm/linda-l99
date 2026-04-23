
$files = Get-ChildItem -Path . -Filter *.txt | Sort-Object Name
$dest = Join-Path (Get-Location) "LINDA_L99_PROMPTS_UNIFICADOS.md"

"# LINDA L99 PROMPTS" | Set-Content -Path $dest -Encoding UTF8
"" | Add-Content -Path $dest -Encoding UTF8

foreach ($file in $files) {
    "## $($file.BaseName)" | Add-Content -Path $dest -Encoding UTF8
    "" | Add-Content -Path $dest -Encoding UTF8
    "```text" | Add-Content -Path $dest -Encoding UTF8
    Get-Content $file | Add-Content -Path $dest -Encoding UTF8
    "```" | Add-Content -Path $dest -Encoding UTF8
    "" | Add-Content -Path $dest -Encoding UTF8
}
