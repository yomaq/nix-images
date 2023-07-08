{ inputs, ... }@flakeContext:
let
  nixosModule = { config, lib, pkgs, ... }: {
    imports = [
      inputs.self.nixosModules.firewall
      inputs.self.nixosModules.ssh
      inputs.self.nixosModules.xinetd-forward
    ];
  };
in
inputs.nixos-generators.nixosGenerate {
  system = "x86_64-linux";
  format = "proxmox";
  modules = [
    nixosModule
  ];
}
