alias s := serve
alias u := update

serve:
    hugo server

update:
    nix flake update
    git submodule update --remote --merge
    git add themes/blowfish flake.lock
