# nix-images
nix flakes for use with nixos-generators
https://github.com/nix-community/nixos-generators


To use these first you will need nix installed. And I believe it needs to be on a x86_64 system with virtualization enabled.

Enable Flakes and nix-commands
```
mkdir -p ~/.config/nix
echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf
```
