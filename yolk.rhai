import "themes" as themes;
import "enabled" as enabled;

export let data = #{
    colors: themes::gruvbox, 
    enabled: enabled::table,
    fonts: #{
        dev: "FiraCodeNerdFont",
        user: "NotoSansSerif",
        fira: #{
            normal: "FiraCodeNerdFont",
            propo: "FiraCodeNerdFontPropo",
            mono: "FiraCodeNerdFontMono",
        },
        noto: #{
            sans: "NotoSansSerif",
            serif: "NotoSerif",
            emoji: "NotoColorEmoji"
        }
    },
};

export let eggs = #{
    nvim: #{ 
        enabled: data.enabled.nvim,
        targets: "~/.config/nvim",
        main_file: "lua/plugins/init.lua",
    },
    alacritty: #{ 
        enabled: data.enabled.alacritty,
        targets: "~/.config/alacritty",
        main_file: "alacritty.toml",
    },
    hypr: #{
        enabled: data.enabled.hypr,
        targets: "~/.config/hypr",
        main_file: "hyprland.conf",
    },
    eww: #{
        enabled: data.enabled.eww,
        targets: "~/.config/eww",
        templates: ["**/*.scss", "eww.yuck"],
        main_file: "eww.yuck",
    },
    git: #{
        enabled: data.enabled.git,
        targets: #{
            "ignore": "~/.config/git/ignore",
            ".gitconfig": "~/.gitconfig"
        },
        main_file: ".gitconfig",
    },
    zsh: #{
        enabled: data.enabled.zsh,
        targets: "~",
        strategy: "merge",
        templates: [".zshrc"],
        main_file: ".zshrc",
    },
    starship: #{
        enabled: data.enabled.starship,
        targets: "~/.config",
        strategy: "merge",
        main_file: "starship.toml"
    },
    tmux: #{
        enabled: data.enabled.tmux,
        targets: "~/.config/tmux",
        main_file: "tmux.conf",
    },
    wofi: #{
        enabled: data.enabled.wofi,
        targets: "~/.config/wofi",
        templates: ["style.css"],
    },
}

