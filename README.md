ALL IN ONE
```
sh -c "$(wget https://raw.githubusercontent.com/ruochenxu92/setup_zsh/master/install.sh -O -)"
```


```sh

git clone https://github.com/chantra/dotfiles && cd dotfiles && ./install.sh

git clone https://github.com/xxu46/setup_zsh && open setup_zsh 

config iterm2 profile text based on iterm2.png

cp zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

source ~/.zshrc

open new tab 

l => ls

git config --list

git config --global user.name xxxxx_your_github_username

git config --global user.name xxxxx_your_github_email

```


**Background**
xx team requests a checkbox on xxx dashboard to mark whether report has been delivered to us. The checkbox needs to be persist in `InAppSurvey` entity.

**Change**
Add a `Boolean` in `InAppSurvey` entity.

**Test Plan**
Testing with frontend integration in devsnapchat.

**Operational Checkboxes**
- This change **can/cannot** be rolled out incrementally
   - [x] **CAN** 
   - [ ] **CANNOT**
- This change **can/cannot** be safely rolled back
   - [x] **CAN** 
   - [ ] **CANNOT**
 - Some Considerations
    - JSON or Protobuf Schema Changes
    - Task Class Changes/Additions
    - Datastore Entity changes 
    - Change is a bug fix
