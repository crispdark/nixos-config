{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      rebuild-switch = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
    };

    initContent = ''
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
  '';
  };

  home.file.".p10k.zsh".source = ./p10k.zsh;

  home.packages = [ pkgs.nerd-fonts.meslo-lg ];
}

