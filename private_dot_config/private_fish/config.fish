if status is-interactive
    # Commands to run in interactive sessions can go here
  # starship
  starship init fish | source
  # zellij auto create in alacritty
  if test "$TERMINALAPP" = "alacritty"
    eval (zellij setup --generate-auto-start fish | string collect)
  end

  # env  
  set -gx SHELL /usr/local/bin/fish
  set -gx LSCOLORS gxfxcxdxbxegedabagacad
  set -gx RTX_DATA_DIR $HOME/.rtx
  set -gx RTX_CACHE_DIR $RTX_DATA_DIR/cache

  # peco setting
  set fish_plugins theme peco
  function fish_user_key_bindings 
    bind \cw peco_select_history
  end

  # git 
  abbr -a  ga  git add 
  abbr -a  gc  git commit -m 
  abbr -a  gch  git checkout -b 
  abbr -a  gp  git push 
  abbr -a  gpself  git push origin HEAD 
  abbr -a  gf  git fetch 
  abbr -a  gr  git rebase 
  abbr -a  gl git log
  abbr -a  gco git checkout 
  abbr -a  gb git branch
  abbr -a  gs git switch

  # zellij
  abbr -a  zel  zellij -s  
  abbr -a  zells  zellij ls 
  abbr -a  zela  zellij attach 
  abbr -a  zelk  zellij kill-session 
  abbr -a  zelka  zellij kill-all-sessions 

  # docker
  abbr -a  di  docker images 
  abbr -a  dp  docker ps 
  abbr -a  dp-a  docker ps -a 
  abbr -a  db  docker build 

  # docker compose
  abbr -a  dc  docker compose 
  abbr -a  dcu  docker compose up -d 
  abbr -a  dcs  docker compose stop 
  abbr -a  dcd  docker compose down 
  abbr -a  dce  docker compose exec 
  abbr -a  dcr  docker compose restart 

  # cd
  abbr -a  ..  cd .. 
  abbr -a  ...  cd ../.. 
  abbr -a  ....  cd ../../.. 

  # ls
  abbr -a  ll  ls -alF 

  # grep
  abbr -a   grep  rg 

  # find
  abbr -a   find  fd 

  # -i
  abbr -a   rm  rm -i 
  abbr -a   mv  mv -i 

  # bundle
  abbr -a  b  bundle 
  abbr -a  be  bundle exec 
  abbr -a  bi  bundle install -j4 
end

# rtx-cli
rtx activate fish | source
