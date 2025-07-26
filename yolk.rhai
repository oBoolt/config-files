import "themes" as themes;

export let data = #{
    colors: themes::gruvbox, 
    fonts: #{
        dev: "FiraCodeNerdFont",
        user: "NotoSansSerif",
    }
};

export let eggs = #{
    nvim: #{ 
        targets: "~/.config/nvim",
        main_file: "lua/plugins/init.lua",
    },
    alacritty: #{ 
        targets: "~/.config/alacritty",
        main_file: "alacritty.toml",
    },
    hypr: #{
        targets: "~/.config/hypr",
        main_file: "hyprland.conf",
    },
    eww: #{
        targets: "~/.config/eww",
        templates: ["**/*.scss", "eww.yuck"],
        main_file: "eww.yuck",
    },
    git: #{
        targets: #{
            "ignore": "~/.config/git/ignore",
            ".gitconfig": "~/.gitconfig"
        },
        main_file: ".gitconfig",
    },
    zsh: #{
        targets: "~",
        strategy: "merge",
        main_file: ".zshrc",
    },
    starship: #{
        targets: "~/.config",
        strategy: "merge",
        main_file: "starship.toml"
    },
    tmux: #{
        targets: "~/.config/tmux",
        main_file: ".tmux.conf",
    },
    wofi: #{
        targets: "~/.config/wofi",
        templates: ["style.css"],
    },
}

