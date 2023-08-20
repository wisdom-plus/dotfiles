if status is-interactive
    # Commands to run in interactive sessions can go here
  starship init fish | source
  if test "$TERMINALAPP" = "alacritty"
    eval (zellij setup --generate-auto-start fish | string collect)
  end
end
