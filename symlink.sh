#
# Symlink stuff
# 
# Remember to change the symlink source here to your own preferences
#
echo "Creating symlinks..."
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/config/" "${HOME}/.config"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/irssi/" "${HOME}/.irssi"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/newsboat/" "${HOME}/.newsboat"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/rainbow/.rainbow_config.json" "${HOME}/.rainbow_config.json"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/rainbow/.rainbow_oauth" "${HOME}/.rainbow_oauth"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/tmux/" "${HOME}/.tmux"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/tmux/.tmux.conf" "${HOME}/.tmux.conf"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/spacevim" "${HOME}/.vim"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/spacevim" "${HOME}/.SpaceVim"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/spacevim.d/" "${HOME}/.SpaceVim.d"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/zsh/.zshrc" "${HOME}/.zshrc"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/bash/.bashrc" "${HOME}/.bashrc"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/parsec" "${HOME}/.parsec"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/symlink/warp" "${HOME}/.warp"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/" "${HOME}/dotfiles"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/ansible" "${HOME}/ansible"
ln -s "${HOME}/docs/3_Resources/git/documentation" "${HOME}/documentation"
ln -s "${HOME}/Library/Mobile docs/iCloud~md~obsidian/docs/notes" "${HOME}/notes"
echo "done."

echo "Creating symlinks för git..."
ln -s "${HOME}/docs/3_Resources/git/dotfiles/git/gitattributes" "${HOME}/.gitattributes"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/git/gitconfig" "${HOME}/.gitconfig"
ln -s "${HOME}/docs/3_Resources/git/dotfiles/git/gitignore" "${HOME}/.gitignore"
echo "done."