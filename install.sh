sudo apt -y update
sudo apt -y install zsh
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --skip-chsh --keep-zshrc
git clone https://github.com/ruochenxu92/setup_zsh
cp setup_zsh/example_zshrc ~/.zshrc
echo 'exec zsh' >>  ~/.bashrc
mkdir -p ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
source  ~/.zshrc
