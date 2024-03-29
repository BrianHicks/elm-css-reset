{ ... }:
let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
  niv = import sources.niv { };
in pkgs.mkShell {
  buildInputs = with pkgs; [
    niv.niv
    git
    elmPackages.elm
    elmPackages.elm-format
  ];
}
