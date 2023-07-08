{
  description = "";
  inputs = {
    nixpkgs.url = "flake:nixpkgs/nixpkgs-unstable";
    nixos-generators.url = "flake:nixos-generators";
    nixos-generators.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = inputs:
    let
      flakeContext = {
        inherit inputs;
      };
    in
    {
      nixosModules = {
        firewall = import ./nixosModules/firewall.nix flakeContext;
        lockdown = import ./nixosModules/lockdown.nix flakeContext;
        ssh = import ./nixosModules/ssh.nix flakeContext;
        xinetd-forward = import ./nixosModules/xinetd-forward.nix flakeContext;
      };
      packages = {
        x86_64-linux = {
          portforward-digital-ocean = import ./packages/portforward-digital-ocean.nix flakeContext;
          portforward-proxmox = import ./packages/portforward-proxmox.nix flakeContext;
        };
      };
    };
}
