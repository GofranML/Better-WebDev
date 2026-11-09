<#
.SYNOPSIS
    Idempotent Skill Installer with Existing Skill Detection & Dry-Run Support (v1.0.1)
.DESCRIPTION
    Installs a skill from the Universal Agent Skills Toolkit into the target agent skill directory.
    Inspects destination, detects existing skills, prevents destructive overwrites, and supports dry-run mode.
.PARAMETER SkillName
    The name of the skill to install (e.g. "master-design-intelligence", "anatomy", etc.)
.PARAMETER TargetDir
    The target agent skill directory (e.g. "$HOME\.gemini\config\skills" or "$HOME\.claude\skills")
.PARAMETER DryRun
    If specified, performs inspection and reports actions without modifying any files.
.PARAMETER Force
    If specified, updates the skill after explicit approval.
#>
param(
    [Parameter(Mandatory=$true)]
    [string]$SkillName,

    [Parameter(Mandatory=$true)]
    [string]$TargetDir,

    [switch]$DryRun,
    [switch]$Force
)

$ErrorActionPreference = "Stop"
$toolkitRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")

# 1. Locate source skill
$canonicalSource = Join-Path $toolkitRoot "skills\custom\$SkillName"
if (-not (Test-Path $canonicalSource)) {
    $canonicalSource = Join-Path $toolkitRoot "skills\official\$SkillName"
}
if (-not (Test-Path $canonicalSource)) {
    $canonicalSource = Join-Path $toolkitRoot "skills\third-party\$SkillName"
}
if (-not (Test-Path $canonicalSource)) {
    Write-Host "[BLOCKED] Skill '$SkillName' not found in toolkit source directories." -ForegroundColor Red
    exit 1
}

Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host " Universal Agent Skills Toolkit: Idempotent Installer" -ForegroundColor Cyan
Write-Host " Source: $canonicalSource" -ForegroundColor Gray
Write-Host " Target Directory: $TargetDir" -ForegroundColor Gray
Write-Host " Mode: $(if ($DryRun) { 'DRY-RUN (Simulated)' } else { 'LIVE EXECUTION' })" -ForegroundColor Yellow
Write-Host "=====================================================`n" -ForegroundColor Cyan

# 2. Check destination
$destination = Join-Path $TargetDir $SkillName

if (Test-Path $destination) {
    Write-Host "[STATUS] Existing skill detected at: $destination" -ForegroundColor Yellow
    
    # Compare SKILL.md hash
    $srcSkillMd = Join-Path $canonicalSource "SKILL.md"
    $dstSkillMd = Join-Path $destination "SKILL.md"
    
    if ((Test-Path $srcSkillMd) -and (Test-Path $dstSkillMd)) {
        $srcHash = (Get-FileHash $srcSkillMd -Algorithm SHA256).Hash
        $dstHash = (Get-FileHash $dstSkillMd -Algorithm SHA256).Hash
        
        if ($srcHash -eq $dstHash) {
            Write-Host "[SKIPPED] Identical version already installed ($dstHash)." -ForegroundColor Green
            Write-Host ">>> Zero modification made. Idempotency preserved. <<<" -ForegroundColor Green
            exit 0
        } else {
            Write-Host "[CONFLICT] Existing skill has different contents!" -ForegroundColor Magenta
            Write-Host "  Source SHA-256: $srcHash" -ForegroundColor Gray
            Write-Host "  Target SHA-256: $dstHash" -ForegroundColor Gray
            
            if (-not $Force) {
                Write-Host "[BLOCKED] Overwrite prevented to protect user modifications. Use -Force to update." -ForegroundColor Red
                exit 2
            } else {
                Write-Host "[NOTICE] -Force specified. Updating skill..." -ForegroundColor Yellow
            }
        }
    }
} else {
    Write-Host "[STATUS] Skill not installed yet. Ready for installation." -ForegroundColor Cyan
}

# 3. Perform copy or dry-run
if ($DryRun) {
    Write-Host "`n[DRY-RUN] Would copy files from '$canonicalSource' to '$destination'." -ForegroundColor Yellow
    Write-Host ">>> DRY-RUN COMPLETE. NO FILES MODIFIED. <<<" -ForegroundColor Yellow
    exit 0
}

# Ensure target directory exists
if (-not (Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
}

Copy-Item -Path $canonicalSource -Destination $destination -Recurse -Force
Write-Host "`n[PASS] Skill '$SkillName' installed successfully to '$destination'." -ForegroundColor Green
Write-Host ">>> INSTALLATION COMPLETE. <<<" -ForegroundColor Green
