{ inputs, ... }:
{
  imports = [ inputs.treefmt-nix.flakeModule ];

  perSystem = {
    treefmt.programs = {
      prettier.enable = true;

      # nix
      nixfmt = {
        enable = true;
        strict = true;
      };
      deadnix.enable = true;
      statix.enable = true;
    };
  };
}
