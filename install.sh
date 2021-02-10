sudo apt -y update
sudo apt -y install zsh
git clone https://github.com/ruochenxu92/setup_zsh
cp setup_zsh/example_zshrc ~/.zshrc
echo 'exec zsh' >>  ~/.bashrc
mkdir -p ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
source  ~/.zshrc
