{ self, pkgs }:
{
  default = pkgs.mkShell {
    packages = builtins.attrValues { inherit (pkgs) just hugo; };

    buildInputs = [ ];

    shellHook = ''
      ${self.checks.${pkgs.stdenv.hostPlatform.system}.pre-commit-check.shellHook}
    '';
  };
}
