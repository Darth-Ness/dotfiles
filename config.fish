if status is-interactive
    fish_vi_key_bindings

    alias cpd="echo (pwd) | xclip -selection clipboard"
    alias cpff="xclip -sel clip <"
    alias calc="bash ~/Documents/programming/scripts/calc"
    alias spell="bash ~/Documents/programming/scripts/spell"
    alias note="bash ~/Documents/programming/scripts/note"

    set -g BROWSER librewolf
end
