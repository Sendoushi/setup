echo "########################"; \
echo "# SDS: Update"; \
git pull origin master; \
rm -rf ~/.gitconfig; \
rm -rf ~/.gitignore_global; \
rm -rf ~/.userrc; \
rm -rf ~/.tmux.conf; \
rm -rf ~/.npmrc; \
rm -rf ~/.vimrc; \
rm -rf ~/.Xresources; \
cp .gitconfig; ~/.gitconfig; \
cp .gitignore_global; ~/.gitignore_global; \
cp .userrc; ~/.userrc; \
cp .tmux.conf; ~/.tmux.conf; \
cp .npmrc; ~/.npmrc; \
cp .vimrc; ~/.vimrc; \
cp .vimrc; ~/.Xresources; \