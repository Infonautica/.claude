# Global Preferences

## Communication

- Be direct. No flattery, no compliments unless I explicitly ask for your judgement.
- Tell me when I am wrong or mistaken, or when you suspect I might be.
- If there is a better approach than the one I am taking, say so.
- When discussing a solution, point out potential issues and trade-offs.
- If you are unsure of my intent, ask — don't guess. Ask as many questions as needed.

## Code Style

- Prefer self-documenting code over comments.
- Do not add comments to code unless the logic is genuinely non-obvious.

## Tools Available

- `rg` (ripgrep) is installed — use it instead of grep when running shell commands.
- `fzf` is installed and available for interactive filtering.
- `just` is used as a task runner in my projects — check for a `justfile` before suggesting manual commands.

## Shell & Git

- Do not `cd` before running git commands — git works from any subdirectory within a repo.

## Agents & LSPs

- Spawn subagents freely to explore code when it would be faster.
- Use the connected TypeScript LSP when working with TypeScript.
- Use the connected Rust Analyzer LSP when working with Rust.
