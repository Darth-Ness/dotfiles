if status is-interactive
    fish_vi_key_bindings

    alias cpd="echo (pwd) | xclip -selection clipboard"
    alias cpff="xclip -sel clip <"
    alias calc="bash ~/Documents/programming/scripts/calc"
    alias spell="bash ~/Documents/programming/scripts/spell"
    alias note="bash ~/Documents/programming/scripts/note"
    alias !="eval (history -n 1)"

    set -g BROWSER librewolf
    set -gx EDITOR nvim
end
