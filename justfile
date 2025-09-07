alias s := serve
alias u := update

serve:
    $BROWSER localhost:1313
    hugo server

update:
    nix flake update
    git submodule update --remote --merge
    git add themes/blowfish flake.lock
