{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.hugo
    pkgs.go
    pkgs.wget
  ];
  
  shellHook = ''
    alias hs="hugo server"
  '';
}
