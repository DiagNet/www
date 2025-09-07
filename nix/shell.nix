{
  self,
  pkgs,
}: {
  default = pkgs.mkShell {
    packages = builtins.attrValues {
      inherit
        (pkgs)
        just
        hugo
        ;
    };

    buildInputs = [];

    shellHook = ''
      ${self.checks.${pkgs.system}.pre-commit-check.shellHook}
    '';
  };
}
