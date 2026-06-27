{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;


    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

  home.packages = with pkgs; [
    zsh-powerlevel10k
  ];

  home.file.".p10k.zsh".source = ./p10k.zsh;

  programs.zsh.initContent = ''
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
  '';

 

}

