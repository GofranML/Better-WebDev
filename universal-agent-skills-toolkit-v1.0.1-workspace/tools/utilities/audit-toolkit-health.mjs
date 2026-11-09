#!/usr/bin/env node
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const rootDir = path.resolve(__dirname, '../../');

console.log('=====================================================');
console.log(' Universal Agent Skills Toolkit: Health Check');
console.log(' Root Directory:', rootDir);
console.log('=====================================================\n');

const checks = [
  { name: 'Core Instructions', path: 'instructions/UNIVERSAL_AGENT_INSTRUCTIONS.md' },
  { name: 'Manifest', path: 'MANIFEST.json' },
  { name: 'Licenses Register', path: 'LICENSES.md' },
  { name: 'Security Policy', path: 'SECURITY.md' },
  { name: 'Compatibility Matrix', path: 'COMPATIBILITY.md' },
  { name: 'Design Intelligence Library', path: 'references/design-intelligence-library/DESIGN-INDEX.md' },
  { name: 'Master Design Intelligence Skill', path: 'custom-skills/master-design-intelligence/SKILL.md' },
  { name: 'Anatomy Skill & Kit', path: 'custom-skills/anatomy/kit/lathe.mjs' },
  { name: 'GSAP Motion Specialist', path: 'custom-skills/gsap-motion-specialist/SKILL.md' },
  { name: 'Shaders WebGPU Specialist', path: 'custom-skills/shaders-webgpu-specialist/SKILL.md' },
  { name: 'Dioramas Web Design', path: 'custom-skills/dioramas-web-design/SKILL.md' },
  { name: 'Lucide Icons Skill', path: 'custom-skills/lucide-icons/SKILL.md' },
  { name: 'Framer Motion Skill', path: 'custom-skills/framer-motion/SKILL.md' },
  { name: 'Karpathy Guidelines', path: 'custom-skills/karpathy-guidelines/SKILL.md' },
  { name: 'MCP Universal Config', path: 'tools/mcp/mcp-universal.json' }
];

let allPassed = true;
for (const check of checks) {
  const fullPath = path.join(rootDir, check.path);
  const exists = fs.existsSync(fullPath);
  console.log(`[${exists ? 'PASS' : 'FAIL'}] ${check.name.padEnd(35)} -> ${check.path}`);
  if (!exists) allPassed = false;
}

console.log('\nScanning available skills directory:');
const skillsDir = path.join(rootDir, 'skills');
if (fs.existsSync(skillsDir)) {
  const categories = fs.readdirSync(skillsDir);
  for (const cat of categories) {
    const catPath = path.join(skillsDir, cat);
    if (fs.statSync(catPath).isDirectory()) {
      const skillList = fs.readdirSync(catPath);
      console.log(`  Category [${cat}]: ${skillList.length} skills found (${skillList.join(', ')})`);
    }
  }
}

console.log('\n=====================================================');
console.log(allPassed ? '>>> ALL HEALTH CHECKS PASSED. TOOLKIT IS READY. <<<' : '>>> SOME HEALTH CHECKS FAILED. PLEASE REVIEW. <<<');
console.log('=====================================================');
