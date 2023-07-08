{ inputs, ... }@flakeContext:
{ config, lib, pkgs, ... }: {
  config = {
    services = {
      openssh = {
        enable = false;
      };
    };
    users = {
      allowNoPasswordLogin = true;
      mutableUsers = false;
      users = {
        root = {
          hashedPassword = null;
        };
      };
    };
  };
}
