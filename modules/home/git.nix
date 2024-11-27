{ ... }:
{
  home.shellAliases = {
    g = "git";
    lg = "lazygit";
  };

  # https://nixos.asia/en/git
  programs = {
    git = {
      enable = true;
      # userName = "John Doe";
      # userEmail = "johndoe@example.com";
      ignores = [ "*~" "*.swp" ];
      aliases = {
        ci = "commit";
        # setting this up explicitly as an alias gives you autocomplete
        identity = "! git-identity";
        id = "! git-identity";
      };      
      extraConfig = {
        # init.defaultBranch = "master";
        # pull.rebase = "false";

        # extremely important, otherwise git will attempt to guess a default user identity. see `man git-config` for more details
        user.useConfigOnly = true;

        # the `github` identity
        user.github.name = "Max Muster";
        user.github.email = "max.muster@example.de";

        # the `gitlab` identity
        user.gitlab.name = "Max Muster";
        user.gitlab.email = "max.muster@example.de";
      };
    };
    lazygit.enable = true;
  };

}
