if test -e $HOME/.anyenv
  set -gx ANYENV_ROOT $HOME/.anyenv
  set -gx PATH $ANYENV_ROOT/bin $PATH
  source (anyenv init -|psub)
  # status --is-interactive; and source (anyenv init -|psub)
else
    echo ~/.anyenv dir not found.\nYou can run 'git clone https://github.com/riywo/anyenv ~/.anyenv' to install it.

    # https://github.com/fish-shell/fish-shell/issues/3805
    #  if type -q git
    #    if __confirm "~/.anyenv dir not found, do you want to install it?"
    #      git clone https://github.com/riywo/anyenv ~/.anyenv
    #    end
    #  else
    #    echo ~/.anyenv dir not found and git is not installed. You are on your own!
    #  end
end
