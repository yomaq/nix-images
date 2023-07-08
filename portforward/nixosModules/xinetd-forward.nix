{ inputs, ... }@flakeContext:
{ config, lib, pkgs, ... }: {
  config = {
    services = {
      xinetd = {
        enable = true;
        services = [
          {
            name = "http";
            unlisted = true;
            port = 80;
            server = "/usr/bin/env"; # not used if "redirect" is specified, but required by Nixos, *and* must be executable
            extraConfig = "redirect = 10.124.0.3 32080";
          }
          {
            name = "https";
            unlisted = true;
            port = 443;
            server = "/usr/bin/env"; # not used if "redirect" is specified, but required by Nixos, *and* must be executable
            extraConfig = "redirect = 10.124.0.3 32443";
          }
          {
            name = "tcp";
            unlisted = true;
            port = 8080;
            server = "/usr/bin/env"; # not used if "redirect" is specified, but required by Nixos, *and* must be executable
            extraConfig = "redirect = 10.124.0.3 32808";
          }
        ];
      };
    };
  };
}
