{
  description = "Dev shell: gh + git + Node (npx) with Claude Code, Gemini CLI, and ChatGPT/Codex-style CLIs";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = [
          pkgs.nodejs_22   # gives you node + npm + npx
          pkgs.git
          pkgs.gh
        ];

        shellHook = ''
          # --- AI CLIs (via npx) ---
          alias claude="npx @anthropic-ai/claude-code@latest"
          alias gemini="npx @google/gemini-cli@latest"
          alias codex="npx @openai/codex@latest"
          alias chatgpt="npx @openai/codex@latest"

          echo "🐚 AI dev shell active"
          echo "  - claude  (npx @anthropic-ai/claude-code@latest)"
          echo "  - gemini  (npx @google/gemini-cli@latest)"
          echo "  - codex   (npx @openai/codex@latest)"
          echo "  - chatgpt (uses chatgpt/openai if already installed, else falls back to codex)"
          echo "  - git, gh"
        '';
      };
    };
}
