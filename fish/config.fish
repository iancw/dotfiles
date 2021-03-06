
source ~/.config/fish/functions/fish_command_timer.fish
set fish_command_timer_color grey

if status --is-login
    set -x PATH ./node_modules/.bin ~/bin /opt/chefdk/bin $PATH
end

set -x EDITOR nvim
# Alias vim to nvim
function vim
    nvim $argv
end

function vi
    vim $argv
end
