{
  perSystem =
    { config, pkgs, ... }:
    {
      devShells.default = pkgs.mkShell {
        packages = builtins.attrValues { inherit (pkgs) just hugo; };
        shellHook = ''
          ${config.pre-commit.settings.shellHook}
        '';
      };
    };
}
