{
  description = "Dev shell: TS + Node + Python uv + git + Docker";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          # Node + TypeScript
          pkgs.nodejs_22
          pkgs.nodePackages.typescript
          pkgs.nodePackages.typescript-language-server

          # Python + uv
          pkgs.python312
          pkgs.uv

          # git
          pkgs.git
          pkgs.gh

          # Docker (client only)
          pkgs.docker-client
          pkgs.docker-compose

          # Required for numpy and other native Python packages
          pkgs.stdenv.cc.cc.lib
          pkgs.zlib
        ];

        shellHook = ''
          alias claude="npx @anthropic-ai/claude-code@latest"
          alias ccusage="npx ccusage@latest"
          echo "🐚 Dev shell active (Node, Python+uv, Docker CLI)"
          export UV_PROJECT_ENVIRONMENT=".venv"
          # Add native libs to LD_LIBRARY_PATH for numpy/scipy
          export LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib}/lib:${pkgs.zlib}/lib:$LD_LIBRARY_PATH"
        '';
      };
    };
}
