sudo apt -y update
sudo apt -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --skip-chsh --keep-zshrc
wget -O ~/.zshrc https://raw.githubusercontent.com/ruochenxu92/setup_zsh/master/example_zshrc
echo 'exec zsh' >>  ~/.bashrc
mkdir -p ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
source  ~/.bashrc
