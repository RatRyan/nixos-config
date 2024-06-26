{ pkgs, ... }: {
  home.username = "ryan";
  home.homeDirectory = "/home/ryan";

  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
  };

  home.packages = with pkgs; [
    # CLI Tools
    bat
    direnv
    distrobox
    eza
    fzf
    lazydocker
    lazygit
    ripgrep
    tmux
    unzip
    zoxide

    # Cloud Tools
    awscli2
    aws-sam-cli

    # Communication
    discord
    teams-for-linux
    zoom-us

    # Desktop Apps
    tidal-hifi
    obsidian
    wezterm
  ];

  home.file.".zshrc".source = ./zshrc;

  programs.starship = {
    enable = true;
    settings = (builtins.fromTOML (builtins.readFile ./starship.toml));
  };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
