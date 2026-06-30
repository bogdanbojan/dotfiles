<#
.SYNOPSIS
    Deploy the configs from this repo to their real Windows locations.
.DESCRIPTION
    Reverse of sync.sh. Copies alacritty / komorebi / whkd configs out to
    %USERPROFILE% (and %APPDATA%). Run from PowerShell on the Windows side.

    By default it copies. Pass -Restore to also re-import scoop packages
    (which reinstalls the Go Mono nerd font used by alacritty/kitty).
.EXAMPLE
    pwsh -File .\windows\install.ps1
    pwsh -File .\windows\install.ps1 -Restore
#>
param(
    [switch]$Restore
)

$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$home = $env:USERPROFILE

function Copy-Cfg($src, $dst) {
    $dstDir = Split-Path -Parent $dst
    if (-not (Test-Path $dstDir)) { New-Item -ItemType Directory -Force -Path $dstDir | Out-Null }
    Copy-Item -Force -Recurse $src $dst
    Write-Host "  $src -> $dst"
}

Write-Host ">> alacritty"
$alaDir = Join-Path $env:APPDATA 'alacritty'
if (-not (Test-Path $alaDir)) { New-Item -ItemType Directory -Force -Path $alaDir | Out-Null }
Copy-Cfg (Join-Path $here 'alacritty\alacritty.toml') (Join-Path $alaDir 'alacritty.toml')
if (Test-Path (Join-Path $alaDir 'themes')) { Remove-Item -Recurse -Force (Join-Path $alaDir 'themes') }
Copy-Cfg (Join-Path $here 'alacritty\themes') $alaDir

Write-Host ">> komorebi"
Copy-Cfg (Join-Path $here 'komorebi\komorebi.json')     (Join-Path $home 'komorebi.json')
Copy-Cfg (Join-Path $here 'komorebi\komorebi.bar.json') (Join-Path $home 'komorebi.bar.json')
Copy-Cfg (Join-Path $here 'komorebi\applications.json') (Join-Path $home 'applications.json')

Write-Host ">> whkd"
$whkdDir = Join-Path $home '.config'
Copy-Cfg (Join-Path $here 'whkd\whkdrc') (Join-Path $whkdDir 'whkdrc')

if ($Restore) {
    Write-Host ">> scoop import (reinstalls apps + fonts)"
    scoop import (Join-Path $here 'packages\scoop-packages.json')
}

Write-Host "Done."
