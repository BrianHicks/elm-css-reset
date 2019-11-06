{ ... }:
let
  sources = import ./nix/sources.nix;

  nixpkgs = import sources.nixpkgs { };

  niv = import sources.niv { };
in with nixpkgs;
stdenv.mkDerivation {
  name = "elm-css-reset";
  buildInputs = [ niv.niv git elmPackages.elm elmPackages.elm-format ];
}
