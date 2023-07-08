{ inputs, ... }@flakeContext:
let
  nixosModule = { config, lib, pkgs, ... }: {
    imports = [
      inputs.self.nixosModules.firewall
      inputs.self.nixosModules.lockdown
      inputs.self.nixosModules.xinetd-forward
    ];
    config = {
      system = {
        stateVersion = "23.11";
      };
    };
  };
in
inputs.nixos-generators.nixosGenerate {
  system = "x86_64-linux";
  format = "do";
  modules = [
    nixosModule
  ];
}
