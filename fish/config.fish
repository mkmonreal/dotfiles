set -g fish_greeting
set -gx PATH $PATH export $HOME/.local/bin
set -gx PATH $PATH export $HOME/.config/emacs/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

oh-my-posh init fish --config 'dracula' | source
fastfetch

#nvm
function nvm
    bass source ~/.config/nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
#nvm end

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
