{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "graham";
  home.homeDirectory = "/Users/graham";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    # pkgs.hello
    atuin
    bat
    eza
    darwin.trash
    fzf
    helix
    neovim
    starship
    tmux
    yazi
    zellij
    zoxide
    

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
    
    ".config/atuin".source = ~/dotfiles/atuin/.config/atuin;
    ".config/bat".source = ~/dotfiles/bat/.config/bat;
    ".config/helix".source = ~/dotfiles/helix/.config/helix;
    ".config/kitty".source = ~/dotfiles/kitty/.config/kitty;
    ".config/nvim".source = ~/dotfiles/nvim/.config/nvim;
    ".config/skhd".source = ~/dotfiles/skhd/.config/skhd;
    ".config/starship".source = ~/dotfiles/starship/.config/starship;
    ".config/tmux".source = ~/dotfiles/tmux/.config/tmux;
    ".config/wezterm".source = ~/dotfiles/wezterm/.config/wezterm;
    ".config/yabai".source = ~/dotfiles/yabai/.config/yabai;
    ".config/yazi".source = ~/dotfiles/yazi/.config/yazi;
    ".config/zellij".source = ~/dotfiles/zellij/.config/zellij;
    ".config/zsh".source = ~/dotfiles/zsh/.config/zsh;
    
    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/graham/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
