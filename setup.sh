# This is the initial setup script for vimconf
# it will create vim/bundle folder, then clone Vundle.vim into it.
# then create necessary symbolic link to .vimrc and .vim 
# then run vim to do plugin install

# Get the vimconfig repository path
CONFIG_DIR=`pwd`

# Create vim/bundle folder if it doesn't exist
if [ ! -d vim/bundle ]; then
	mkdir vim/bundle
fi

cd vim/bundle 

# clone Vundle.vim repository if it doesn't exists
if [ ! -d Vundle.vim ]; then
	git clone https://github.com/gmarik/Vundle.vim
else
	cd Vundle.vim
	git pull origin master
fi

# create symbolic links
cd ~
if [[ -L .nvimrc || -f .nvimrc ]]; then
	rm .nvimrc
fi 
if [[ -L .nvim || -d .nvim ]]; then
	rm .nvim
fi
ln -s $CONFIG_DIR/.nvimrc .nvimrc
ln -s $CONFIG_DIR/vim .nvim

# run vim to do the plugin install
nvim +PluginInstall +qall
