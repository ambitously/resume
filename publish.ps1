param(
  [Parameter(Mandatory=$true)]
  [string]$RepoUrl
)

$ErrorActionPreference = 'Stop'

Set-Location $PSScriptRoot

if (-not (Test-Path '.git')) {
  git init -b main
}

if (-not (git remote | Select-String -SimpleMatch 'origin')) {
  git remote add origin $RepoUrl
} else {
  git remote set-url origin $RepoUrl
}

git add .

$hasChanges = $true
try {
  git diff --cached --quiet
  $hasChanges = $false
} catch {
  $hasChanges = $true
}

if ($hasChanges) {
  git commit -m "Deploy website"
}

git push -u origin main

Write-Host "Done. Now enable GitHub Pages in repository Settings > Pages (main / root)."
