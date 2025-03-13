set -g fish_greeting
set -gx PATH $PATH export $HOME/.local/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
end

oh-my-posh init fish --config ~/Git/dracula/oh-my-posh/dracula.omp.json | source
fastfetch
