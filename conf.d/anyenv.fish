if test -e $HOME/.anyenv
  set -gx ANYENV_ROOT $HOME/.anyenv
  __add_to_path $ANYENV_ROOT/bin
  status --is-interactive; and source (anyenv init -|psub)
else
  if type -q git
    if __confirm "~/.anyenv dir not found, do you want to install it?"
      git clone https://github.com/riywo/anyenv ~/.anyenv
    end
  else
    echo ~/.anyenv dir not found and git is not installed. You are on your own!
  end
end
