{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;


    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;


    oh-my-zsh = {
      enable = true;
      theme = "";

      plugins = [
        "git"
      ];
    };
  };

  programs.zsh.initContent = ''
    source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
  '';

  home.packages = with pkgs; [
    zsh-powerlevel10k
  ];

  home.file.".p10k.zsh".source = ./p10k.zsh;
}

