{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;


    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      rebuild-switch = "sudo nixos-rebuild switch --flake /etc/nixos#nixos";
    };
  };

  programs.zsh.initContent = ''
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
  '';
}

