My collection of linux dotfiles.

# Initializing Tools

 * Setup symbolic links to dotfiles
   * `~/dotfiles/makesyms.sh`

 * Setup Vim Plugin Manager - Vundle
   * `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
   * Install vundle plugins from within vim: `:PluginInstall`

 * Setup Tmux Plugin Managaer - tpm
   * `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
   * Install tpm plugins from within tmux: `prefix + I`

 * Setup better looking git log
   * `git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"`
