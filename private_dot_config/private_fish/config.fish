if status is-interactive
    # Commands to run in interactive sessions can go here
  starship init fish | source
  if test "$TERMINALAPP" = "alacritty"
    eval (zellij setup --generate-auto-start fish | string collect)
  end
  
  set -gx SHELL /usr/local/bin/fish
end
