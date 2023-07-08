{ inputs, ... }@flakeContext:
{ config, lib, pkgs, ... }: {
  config = {
    networking = {
      firewall = {
        allowedTCPPorts = [
          22
        ];
      };
    };
    services = {
      openssh = {
        enable = true;
        settings = {
          PasswordAuthentication = false;
        };
      };
    };
    users = {
      users = {
        root = {
          openssh = {
            authorizedKeys = {
              keys = [
                "key go here"
              ];
            };
          };
          password = "root";
        };
      };
    };
  };
}
