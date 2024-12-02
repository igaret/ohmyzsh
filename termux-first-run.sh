#!/data/data/com.termux/files/usr/bin/sh
echo "running package manager updates"
apt update > /dev/null 2>&1
echo "updating packages"
apt full-upgrade -y
echo "installing prereq pkgs"
echo "		zsh, git, tsu, root-repo"
apt install zsh git tsu root-repo -y  > /dev/null 2>&1
apt update > /dev/null 2>&1
echo "installing termux-api"
apt install termux-\* -y  > /dev/null 2>&1
apt update > /dev/null 2>&1
echo "setting up ZSH for [oh-my-zsh/oh-my-zsh]"
curl -sL install.ohmyz.sh | bash > /dev/null 2>&1
chsh zsh  > /dev/null 2>&1
echo "setting up [igaret/termux_stuff] for custom [oh-my-zsh/oh-my-zsh]"
#git clone https://github.com/igaret/termux_stuff $TMPDIR/termux-first-run > /dev/null 2>&1
curl -sL https://raw.githubusercontent.com/igaret/termux_stuff/refs/heads/main/termux_oh-my-zsh/aliases > $HOME/.aliases  > /dev/null 2>&1
curl -sL https://raw.githubusercontent.com/igaret/termux_stuff/refs/heads/main/termux_oh-my-zsh/zshrc > $HOME/.zshrc > /dev/null 2>&1
curl -sL https://raw.githubusercontent.com/igaret/termux_stuff/refs/heads/main/termux_oh-my-zsh/aliases > $HOME/.oh-my-zsh/themes/garet.zsh-theme > /dev/null 2>&1
curl -sL https://raw.githubusercontent.com/igaret/termux_stuff/refs/heads/main/install_rish.sh > $TMPDIR/install_rish.sh | bash > /dev/null 2>&1
echo "done. exiting in 3 seconds ..."
sleep 3  > /dev/null 2>&1
exit

