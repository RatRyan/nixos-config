{ pkgs, ... }: {
  home.username = "ryan";
  home.homeDirectory = "/home/ryan";

  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };

  home.packages = with pkgs; [
    # Code Editors
    vscode

    # CLI Tools
    ani-cli
    direnv
    distrobox
    gh
    lazydocker
    lazygit
    zoxide

    # Communication
    discord
    webcord
    teams-for-linux

    # Gaming
    protonup
    prismlauncher

    # Desktop Apps
    tidal-hifi
    obsidian
  ];

  programs = {
    neovim.enable = true;
    starship.enable = true;
    wezterm.enable = true;
    tmux.enable = true;
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}