export let table = #{
    nvim: io::command_available("nvim"),
    alacritty: io::command_available("alacritty"),
    hypr: io::command_available("hyprland"),
    eww: io::command_available("eww"),
    git: io::command_available("git"),
    zsh: io::command_available("zsh"),
    starship: io::command_available("starship"),
    tmux: io::command_available("tmux"),
    wofi: io::command_available("wofi"),
};
