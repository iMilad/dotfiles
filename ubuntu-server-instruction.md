# Ubuntu 24.04 LTS

### ZSH
https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#ubuntu-debian--derivatives-windows-10-wsl--native-linux-kernel-with-windows-10-build-1903

### Set up zsh as default
https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH#install-and-set-up-zsh-as-default

`sudo chsh -s $(which zsh) $USER`
`echo $SHEL`
`grep zsh /etc/passwd`

### OH-MY-ZSH
https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation

### Oh my zsh with autosuggestions & syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```


### Nerd Font
```
#!/bin/bash

sudo apt install fontconfig
cd ~
wget https://github.com/ryanoasis/nerd-fonts/releases/download/<LATEST-RELEASE-VERSION>/Meslo.zip
mkdir -p .local/share/fonts
unzip Meslo.zip -d .local/share/fonts
rm Meslo.zip
fc-cache -fv
```

### Powerlevel10k
https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh

### Install AWS CLI
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

### AWS CLI Auto Completion
https://docs.aws.amazon.com/cli/v1/userguide/cli-configure-completion.html

```.zshrc
# AWS
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws
```

### Install fzf
https://github.com/junegunn/fzf?tab=readme-ov-file#installation

### Install fd
https://github.com/sharkdp/fd?tab=readme-ov-file#on-ubuntu
❯ sudo ln -s $(which fdfind) /usr/bin/fd

### Install fzf-git.sh
https://github.com/junegunn/fzf-git.sh

### Install eza
https://github.com/eza-community/eza/blob/main/INSTALL.md#debian-and-ubuntu

### Install bat
https://github.com/sharkdp/bat?tab=readme-ov-file#on-ubuntu-using-apt

### Install Zoxide
https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file#installation

### Install NeoVIM
https://github.com/neovim/neovim/blob/master/INSTALL.md

### install pyenv
`sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev`
`curl https://pyenv.run | bash`
add the configuration to .zshrc
https://github.com/malexer/cheatsheets/blob/master/pyenv.md
