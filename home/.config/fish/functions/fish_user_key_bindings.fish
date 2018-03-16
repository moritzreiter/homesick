# Have some default key bindings even in vi mode
# https://github.com/fish-shell/fish-shell/issues/3541#issuecomment-260001906
function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
        bind -M $mode \cp up-or-search
        bind -M $mode \cn down-or-search
    end
end

