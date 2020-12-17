# https://qiita.com/nakagawa1017/items/a11599938a6cb0db0dad
echo "デフォルトシェルを fish に変更"
chsh -s /usr/local/bin/fish

echo "fish系"
ln -sf ~/dotfiles/fish ~/.config/fish

echo "fishパッケージマネージャーfisherで管理されているもの"
ln -sf ~/dotfiles/fisher ~/.config/fisher

echo "fisher install"
curl https://git.io/fisher --create-dirs -sLo ~/dotfiles/fish/functions/fisher.fish

echo "start login shell..."
fish -l
fisher
