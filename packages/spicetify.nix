{ pkgs, inputs, ... } : 
{
  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];
  programs.spicetify =
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in
  {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
      shuffle 
    ];
    enabledCustomApps = with spicePkgs.apps; [
      newReleases
      ncsVisualizer
    ];
    enabledSnippets = with spicePkgs.snippets; [
      pointer
    ];

    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  };
}