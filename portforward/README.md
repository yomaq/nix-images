# Purpose
Setup to do nothing other than forward a few ports for my talos cluster.
SSH is disabled, no user accounts are able to login. It just forwards ports.

# Build images

Image I am actually running
```
nix build .#packages.x86_64-linux.portforward-digital-ocean
```

Image with ssh enabled for texting in proxmox
```
nix build .#packages.x86_64-linux.portforward-proxmox
```