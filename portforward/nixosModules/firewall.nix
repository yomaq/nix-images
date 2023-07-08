{ inputs, ... }@flakeContext:
{ config, lib, pkgs, ... }: {
  config = {
    networking = {
      firewall = {
        allowedTCPPorts = [
          443
          80
          8080
        ];
        enable = true;
      };
    };
  };
}
