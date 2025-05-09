# Usage

## The only version that currently works

Only this works due to lack of support for the submodules

```bash
git clone --recurse-submodules https://github.com/identinet/didkit-cli
cd didkit-cli
# manually comment out this line in flake.nix:
#   inputs.self.submodules = true;
nix develop '.?submodules=1#'
```

## Future

THere are issues with sub modules

Open a development shell:

```bash
nix develop 'github:identinet/didkit-cli?submodules=1#'
# or from the local repository
nix develop '.?submodules=1#'
```

Or install the package:

```bash
nix profile install 'github:identinet/didkit?submodules=1#'
```
