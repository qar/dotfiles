# My dotfiles

## Use [vundle](https://github.com/VundleVim/Vundle.vim) to manage vim plugins

1. Download vundle
	`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Install Plugins
	`:PluginInstall`

## Install fonts

  安装 Web Dev Icons 到 Mac OS X.  更多关于 Web Dev Icons 的信息详见 [nerd-fonts 项目](https://github.com/ryanoasis/nerd-fonts)

  ```
  cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
  ```

  如果使用的终端模拟器是 iTerm, 需要到 Preferences 中更改 Non-ASCII Fonts 为你安装的 icons。否则 vim 等关于字体的配置是无法生效的。

## Install solarized theme

1. Download theme
    ```
    cd ~/.vim/bundle
    git clone git://github.com/altercation/vim-colors-solarized.git
    mv vim-colors-solarized ~/.vim/bundle/
    ```
