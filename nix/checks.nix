{
  inputs,
  pkgs,
  ...
}: {
  pre-commit-check = inputs.git-hooks-nix.lib.${pkgs.system}.run {
    src = ../.;
    hooks = {
      # nix
      alejandra.enable = true;
      deadnix.enable = true;
      nil.enable = true;
      statix.enable = true;

      # markdown
      markdownlint = {
        enable = true;
        settings.configuration = {
          line-length = {
            code_blocks = false;
            tables = false;
          };
          no-inline-html = false;
        };
      };
    };
  };
}
