{ home-manager, ... }:

{
  home-manager.users.wlxxs = { imports = [ ./default.nix ]; };
}
