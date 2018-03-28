# Have some default key bindings even in vi mode
# https://github.com/fish-shell/fish-shell/issues/3541#issuecomment-260001906
# More inspirations for key bindings can be found here:
# https://github.com/fish-shell/fish-shell/blob/master/share/functions/fish_default_key_bindings.fish
function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
        bind -M $mode \cb backward-char
        bind -M $mode \cp up-or-search
        bind -M $mode \cn down-or-search
        bind -M $mode \ca beginning-of-line
        bind -M $mode \ce end-of-line
        bind -M $mode \ck kill-line
    end
end

