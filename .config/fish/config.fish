set -g fish_greeting
set -gx PATH $PATH export $HOME/.local/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

oh-my-posh init fish --config 'dracula' | source
fastfetch

# pnpm
set -gx PNPM_HOME "/home/mkmonreal/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
