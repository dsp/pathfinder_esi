{
  description = "pathfinder_esi flake";

  inputs = {
    nixpkgs.url      = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url  = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
      };
     in
     with pkgs;
     {
        devShell = mkShell {
          name = "pathfinder-dev";
          nativeBuildInputs = [
            php74
          ];
          buildInputs = [
            php74Packages.composer
          ];
        };
    });
}
# vim: noai:ts=2:sw=2:expandtab
