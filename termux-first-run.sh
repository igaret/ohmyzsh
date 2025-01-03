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
echo "setting up [igaret/ohmyzsh] for custom [oh-my-zsh/oh-my-zsh]"
#git clone https://github.com/igaret/termux_stuff $TMPDIR/termux-first-run > /dev/null 2>&1
curl -sL https://raw.githubusercontent.com/igaret/shellconf/master/aliases > $HOME/.aliases > /dev/null 2>&1
curl -sL https://raw.githubusercontent.com/igaret/shellconf/master/zshrc > $HOME/.zshrc > /dev/null 2>&1
curl -sL https://raw.githubusercontent.com/igaret/shellconf/master/garet.zsh-theme > $HOME/.oh-my-zsh/themes/igaret.zsh-theme  > /dev/null 2>&1
echo "done. exiting in 3 seconds ..."
if [ "$SHELL" == "bash" ]; then
    exec zsh
elif [ "$SHELL" == "zsh" ]; then
    omz reload
else
    zsh
fi
sleep 3  > /dev/null 2>&1
exit

