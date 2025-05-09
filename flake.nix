{
  description = "didkit CLI";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  # inputs.self.submodules = true;
  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
      default_pkg = import ./default.nix { inherit pkgs; };
    in
    {
      packages.${system}.default = default_pkg;
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          default_pkg
        ];
        nativeBuildInputs = [
        ];
      };
    };
}
