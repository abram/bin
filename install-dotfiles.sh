cd ~/dotfiles

for file in *; do
    if [ -e ~/.$file ]; then
	echo "Moving existing .$file to $.file.old"
	mv ~/.$file ~/.$file.old
    fi
    echo "Creating symlink to .$file in home directory."
    ln -s $dir/$file ~/.$file
done
