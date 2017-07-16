source ~/.asdf/asdf.fish

source ~/.config/fish/functions/fish_command_timer.fish
set fish_command_timer_color grey
set -x VAULT_ADDR "https://prod-vault-lb.aws.opower.it:8200"
set -U fish_user_paths ~/bin ./node_modules/.bin $fish_user_paths

function unset_proxy
  set -e http_proxy;
  set -e https_proxy;
  set -e all_proxy;
  set -e no_proxy;
end

function setup_proxy
  set -x http_proxy http://www-proxy-adcq7-new.us.oracle.com:80
  set -x https_proxy http://www-proxy-adcq7-new.us.oracle.com:80
  set -x all_proxy http://www-proxy-adcq7-new.us.oracle.com:80
  set -x no_proxy "127.0.0.1,localhost,chef-2001.ca.opower.it,opower.it,.hexxie.com,.xip.io"
end
